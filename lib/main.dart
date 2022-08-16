import 'package:client_app/injectable.dart';
import 'package:client_app/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await ScreenUtil.ensureScreenSize();

  configureDependencies();
  runApp(const App());
}
