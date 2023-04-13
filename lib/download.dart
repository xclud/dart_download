/// Cross-Platform file downloader for Dart and Flutter projects.
library download;

export 'src/io.dart'
//    if (dart.library.io) 'src/io.dart'
    if (dart.library.html) 'src/html.dart';
