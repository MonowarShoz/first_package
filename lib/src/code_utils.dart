import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

/// The add funtion adds the value [a] and [b]
int add(int a, int b) {
  return a + b;
}

/// The subtract funtion subtracts the value [a] and [b]
int subtract(int a, int b) {
  return a - b;
}

/// The multiply funtion multiplies the value [a] and [b]
int multiply(int a, int b) {
  return a * b;
}

/// The divide funtion divides the value [a] and [b]
double divide(int a, int b) {
  return a / b;
}
