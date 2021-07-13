import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kanban/app/app.dart';
import 'package:kanban/repositories/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

//ignore_for_file:avoid_renaming_method_parameters
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFFF0F2F9)));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final shp = await SharedPreferences.getInstance();

  setupLocator();
  //initializeDateFormatting();
  HttpOverrides.global = MyHttpOverrides();

  runApp(
    Builder(
      builder: (context2) => RepositoryProvider(
        create: (context) => DioSettings(),
        child: Builder(
          builder: (context3) => App(),
        ),
      ),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (cert, host, port) => true;
}
