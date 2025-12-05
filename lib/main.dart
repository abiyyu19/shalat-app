import 'package:flutter/material.dart';
import 'package:shalat_app/app/app.dart';
import 'package:shalat_app/shalat_app.dart';

Future<void> main() async {
  await initDI();

  runApp(const ShalatApp());
}
