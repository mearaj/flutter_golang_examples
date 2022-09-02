import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as path;


final dynamicLib = ffi.DynamicLibrary.open(_getLibraryPath());

typedef start_server = ffi.Pointer<Utf8> Function();
typedef StartServer = ffi.Pointer<Utf8> Function();

// call startServer() to start server
final StartServer startServer = dynamicLib
    .lookup<ffi.NativeFunction<start_server>>('StartServer')
    .asFunction();


typedef get_port = Int32 Function();
typedef GetPort = int Function();

final getPort = dynamicLib
    .lookup<ffi.NativeFunction<get_port>>('GetPort')
    .asFunction<GetPort>();

String _getLibraryPath() {
  String libraryPath = "";
  try {
    if (Platform.isAndroid) {
      libraryPath = path.join(Directory.current.path,'go','server.a');
    }else if (Platform.isMacOS) {
      libraryPath = path.join(Directory.current.path,'go','server.dylib');
    } else if (Platform.isWindows) {
      libraryPath = path.join(Directory.current.path,'go','server.dll');
    } else {
      libraryPath = path.join(Directory.current.path,'go','server.a');
    }
  } catch (e) {
    print(e);
  }
  return libraryPath;
}
