import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

class CodeUtil {
  static String convertToBase64(var data) {
    String encodedJson = jsonEncode(data);
    var jsonEncodedByte = utf8.encode(encodedJson);
    return base64Encode(jsonEncodedByte);
  }

  static String encodedtoMd5Password(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  static String addDashes(String text) {
    const int addDashEvery = 2;
    String out = '';

    for (int i = 0; i < text.length; i++) {
      if (i + 1 > addDashEvery && i % addDashEvery == 0) {
        out += '-';
      }

      out += text[i];
    }

    return out;
  }

  static String newdecompress(String json) {
    final decodeBase64Json = base64.decode(json);
    final decodegZipJson = zlib.decode(decodeBase64Json);
    return utf8.decode(decodegZipJson);
  }

  static String decompr(String txt) {
    return Decomp.decompress(txt);
  }
}

class Decomp {
  static String decompress(String zipText) {
    final decodeBase64Json = base64Decode(zipText);
    final decodedData = GZipCodec().decode(decodeBase64Json);
    Uint8List bytes = Uint8List.fromList(decodedData);
    final utf16CodeUnits = bytes.buffer.asUint16List();
    final str = String.fromCharCodes(utf16CodeUnits);
    return str;
  }
}
