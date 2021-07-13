import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kanban/core/theme.dart';

class InputFieldComponent extends StatefulWidget {
  final bool isError;
  final String hint;
  final bool obscure;
  final String error;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const InputFieldComponent({
    this.controller,
    required this.hint,
    this.isError = false,
    this.onChanged,
    this.error = '',
    this.obscure = false,
  });

  @override
  _InputFieldComponentState createState() => _InputFieldComponentState();
}

class _InputFieldComponentState extends State<InputFieldComponent> {
  late FocusNode focusNode;
  late TextEditingController controller;
  bool focused = false;

  @override
  void initState() {
    focusNode = FocusNode();
    controller = TextEditingController();

    focusNode.addListener(() {
      // if (focusNode.hasFocus) {
      //   focused = true;
      // } else {
      //   focused = false;
      // }
      print(focusNode.hasFocus);
      // focused = focusNode.hasFocus;
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: widget.isError ? AppTheme.red : AppTheme.accent,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: widget.isError ? AppTheme.red : AppTheme.lightGrey,
                  width: widget.isError ? 2 : 1,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              hintText: widget.hint,
              hintStyle: const TextStyle(
                color: AppTheme.lightGrey,
                fontSize: 14,
              ),
            ),
            onChanged: widget.onChanged,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
            obscureText: widget.obscure,
          ),
          if (widget.isError && widget.error.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      widget.error,
                      style: const TextStyle(color: AppTheme.red, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
        ],
      );
}
