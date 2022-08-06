import 'package:client_app/injectable.dart';
import 'package:client_app/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  configureDependencies();
  runApp(const App());
}
