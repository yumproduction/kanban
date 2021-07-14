// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "enter_user": "Enter username",
  "enter_password": "Enter password",
  "log_in": "Log in",
  "on_hold": "On hold",
  "in_progress": "In progress",
  "needs_review": "Needs review",
  "approved": "Approved",
  "min_login_chars": "Minimum 4 characters",
  "min_pass_chars": "Minimum 8 characters"
};
static const Map<String,dynamic> en = {
  "enter_user": "Enter username",
  "enter_password": "Enter password",
  "log_in": "Log in",
  "on_hold": "On hold",
  "in_progress": "In progress",
  "needs_review": "Needs review",
  "approved": "Approved"
};
static const Map<String,dynamic> ru_RU = {
  "enter_user": "Введите логин",
  "enter_password": "Введите пароль",
  "log_in": "Войти",
  "on_hold": "В ожидании",
  "in_progress": "В процессе",
  "needs_review": "На рассмотрении",
  "approved": "Завершённые",
  "min_login_chars": "Минимум 4 символа",
  "min_pass_chars": "Минимум 8 символов"
};
static const Map<String,dynamic> ru = {
  "enter_user": "Введите логин",
  "enter_password": "Введите пароль",
  "log_in": "Войти",
  "on_hold": "В ожидании",
  "in_progress": "В процессе",
  "needs_review": "На рассмотрении",
  "approved": "Завершённые",
  "min_login_chars": "Минимум 4 символа",
  "min_pass_chars": "Минимум 8 символов"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "en": en, "ru_RU": ru_RU, "ru": ru};
}
