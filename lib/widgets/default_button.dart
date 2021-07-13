import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanban/core/theme.dart';

class MainButton extends StatefulWidget {
  final String title;
  final VoidCallback? callback;
  final double? width;
  final double height;
  final bool isDisabled;
  final bool inProgress;
  final double horizontalPadding;
  final double internalHorizontalPadding;
  final Color color;
  final Color textColor;
  const MainButton(
      {Key? key,
      this.width = double.infinity,
      this.height = 40,
      this.internalHorizontalPadding = 0,
      this.title = '',
      this.callback,
      this.isDisabled = false,
      this.horizontalPadding = 13,
      this.color = AppTheme.accent,
      this.textColor = AppTheme.grey,
      this.inProgress = false})
      : super(key: key);

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.95,
    ).animate(CurvedAnimation(curve: Curves.decelerate, parent: _controller));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => IgnorePointer(
        ignoring: widget.isDisabled || widget.inProgress,
        child: Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
              child: GestureDetector(
                onTap: widget.isDisabled ? null : widget.callback,
                onPanDown: (details) => _controller.forward(),
                onPanCancel: () => _controller.reverse(),
                onPanEnd: (details) => _controller.reverse(),
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    alignment: Alignment.center,
                    height: widget.height,
                    width: widget.width,
                    padding: EdgeInsets.symmetric(
                        horizontal: widget.internalHorizontalPadding),
                    decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: widget.inProgress
                        ? const CupertinoActivityIndicator()
                        : Text(widget.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: AppTheme.grey)),
                  ),
                ),
              ),
            ),
            if (widget.isDisabled)
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.horizontalPadding),
                  child: Container(
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
              )
            else
              const SizedBox.shrink()
          ],
        ),
      );
}
