import 'dart:io';
import 'dart:typed_data';

/// Downloads a file from a [stream] into the destination [filename].
///
/// There are a few caveats about this function:
/// - On the web it caches the contents in a [Blob](https://developer.mozilla.org/en-US/docs/Web/API/Blob) and eventually saves the file in browser's default location.
/// - On desktop it saves the file in absolute or relative path.
/// - On mobile it saves the file in absolute or relative path, but we should ask/ensure if the app has the required permissions.
/// - On the web, not supported in IE or Edge (prior version 18), or in Safari (prior version 10.1).
Future<void> download(Stream<int> stream, String filename) async {
  final bytes = await stream.toList();
  final file = File(filename);
  file.writeAsBytes(bytes);
}

/// Downloads a file from a [url] into the destination [filename].
Future<void> downloadUrl(String url, [String? filename]) async {
  throw Exception('Not implemented.');
}

/// Downloads a file from [data] into the destination [filename].
Future<void> downloadData(Uint8List data, String filename) {
  throw Exception('Not implemented.');
}
