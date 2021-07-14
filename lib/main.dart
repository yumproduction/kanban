import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kanban/app/app.dart';
import 'package:kanban/repositories/auth/auth_repository_impl.dart';
import 'package:kanban/repositories/data/service_locator.dart';
import 'package:kanban/repositories/data/sharedpref_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kanban/generated/codegen_loader.g.dart';

//ignore_for_file:avoid_renaming_method_parameters
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

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
    EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('en', 'US'),
      ],
      assetLoader: const CodegenLoader(),
      path: 'assets/translations',
      fallbackLocale: const Locale('ru', 'RU'),
      child: Builder(
        builder: (context2) => RepositoryProvider(
          create: (context) => DioSettings(),
          child: Builder(
            builder: (context3) => App(
              dataSource: DbDataSourceImpl(shp),
              authRepository: AuthRepositoryImp(DbDataSourceImpl(shp)),
            ),
          ),
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
