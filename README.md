Cross-Platform file downloader for Dart and Flutter projects.

[![pub package](https://img.shields.io/pub/v/download.svg)](https://pub.dartlang.org/packages/download)

## Features

Supports these platforms:
- Android
- iOS
- Linux
- MacOS
- Web
- Windows

There are a few caveats about this package:
- On the web it caches the contents in a [Blob](https://developer.mozilla.org/en-US/docs/Web/API/Blob) and eventually saves the file in browser's default location.
- On desktop it saves the file in absolute or relative path.
- On mobile it saves the file in absolute or relative path, but we should ask/ensure if the app has the required permissions.
- On the web, not supported in IE or Edge (prior version 18), or in Safari (prior version 10.1).

## Getting started

```dart
import 'package:download/download.dart';
```

## Usage

```dart
final stream = Stream.fromIterable('Hello World!'.codeUnits);
download(stream, 'hello.txt');
```

Please refer to `/example` folder for a working example.

## Additional information

Please feel free to contribute to the project or file an issue.
