import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kanban/app/utils/router.dart' as router;
import 'package:kanban/app/utils/remove_glow.dart';
import 'package:kanban/core/theme.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => MyApp();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState? get _navigator => _navigatorKey.currentState;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFF0F2F9),
        systemNavigationBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: _navigatorKey,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: Container(
              child: child,
            ),
          ),
        ),
        title: 'Kanban',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: router.generateRoute,
        theme: AppTheme.darkTheme(),
      );
}
