import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

class Decomp {
  static String decompress(String zipText) {
    final decodeBase64Json = base64Decode(zipText);
    final decodedData = GZipDecoder().decodeBytes(decodeBase64Json);
    Uint8List bytes = Uint8List.fromList(decodedData);
    final utf16CodeUnits = bytes.buffer.asUint16List();
    final str = String.fromCharCodes(utf16CodeUnits);
    return str;
  }
}
