import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanban/screens/login/login.dart';
import 'package:kanban/screens/main/main.dart';

Route createRoute2(Widget? screen, {int? value, String? routeName}) =>
    PageRouteBuilder<Widget>(
      settings: RouteSettings(name: routeName),
      pageBuilder: (context, animation, secondaryAnimation) => screen!,
      transitionDuration: Duration(milliseconds: value ?? 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.ease;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(
          opacity: animation.drive(tween),
          child: child,
        );
      },
    );
Route cupertinoRoute(Widget screen) => CupertinoPageRoute<dynamic>(
      builder: (context) => screen,
    );
Route createRoute(Widget screen) => CupertinoPageRoute<dynamic>(
      builder: (context) => screen,
    );

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
      );
      break;
    // case balanceFillRoute:
    //   return MaterialPageRoute(
    //     builder: (context) => BalanceRefillScreen(),
    //   );
    default:
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
      );
  }
}
