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
  FocusNode focusNode = FocusNode();
  bool focused = false;

  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        if (focusNode.hasFocus) {
          focused = true;
        } else {
          focused = false;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: const Duration(microseconds: 200),
            key: Key(focused.toString()),
            height: 40,
            decoration: BoxDecoration(
              border: widget.isError
                  ? Border.all(color: AppTheme.red, width: 2)
                  : focused
                      ? Border.all(
                          width: 2,
                          color: AppTheme.accent,
                        )
                      : Border.all(
                          width: 1,
                          color: AppTheme.lightGrey,
                        ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: CupertinoTextField(
              focusNode: focusNode,
              controller: widget.controller,
              obscureText: widget.obscure,
              onTap: () {},
              onChanged: widget.onChanged,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(40),
              ),
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
              placeholder: widget.hint,
              placeholderStyle: const TextStyle(
                color: AppTheme.lightGrey,
                fontSize: 14,
              ),
            ),
          ),
          if (widget.isError)
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
                      style: TextStyle(color: AppTheme.red, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
        ],
      );
}
