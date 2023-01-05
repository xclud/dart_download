// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:convert';
import 'dart:html';

/// Downloads a file from a [stream] into the destination [filename].
///
/// There are a few caveats about this function:
/// - On the web it caches the contents in a [Blob](https://developer.mozilla.org/en-US/docs/Web/API/Blob) and eventually saves the file in browser's default location.
/// - On desktop it saves the file in absolute or relative path.
/// - On mobile it saves the file in absolute or relative path, but we should ask/ensure if the app has the required permissions.
/// - On the web, not supported in IE or Edge (prior version 18), or in Safari (prior version 10.1).
Future<void> download(Stream<int> stream, String filename) async {
  filename = filename.replaceAll('/', '_').replaceAll('\\', '_');
  final bytes = await stream.toList();
  // Encode our file in base64
  final b64 = base64Encode(bytes);
  // Create the link with the file
  final anchor =
      AnchorElement(href: 'data:application/octet-stream;base64,$b64')
        ..target = 'blank';
  // add the name
  anchor.download = filename;

  // trigger download
  document.body?.append(anchor);
  anchor.click();
  anchor.remove();
}
