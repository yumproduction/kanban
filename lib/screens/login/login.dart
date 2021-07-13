import 'package:flutter/material.dart';
import 'package:kanban/core/theme.dart';
import 'package:kanban/screens/login/widgets/input_field.dart';
import 'package:kanban/widgets/button_with_content.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 56,
          title: const Text('Kanban'),
          backgroundColor: Theme.of(context).appBarTheme.color,
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InputFieldComponent(hint: 'Enter your username'),
                  const SizedBox(
                    height: 24,
                  ),
                  InputFieldComponent(
                    hint: 'Enter your password',
                    isError: true,
                    error: 'Minimum 8 chars',
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ButtonWithContent(
                    horizontalPadding: 0,
                    borderRadius: 40,
                    height: 40,
                    width: double.infinity,
                    color: Theme.of(context).accentColor,
                    child: const Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(color: AppTheme.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
