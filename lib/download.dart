library download;

export 'src/io.dart'
//    if (dart.library.io) 'src/io.dart'
    if (dart.library.html) 'src/html.dart';
