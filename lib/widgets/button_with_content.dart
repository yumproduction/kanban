import 'package:flutter/material.dart';
import 'package:kanban/core/theme.dart';

class ButtonWithContent extends StatefulWidget {
  final Widget? child;
  final VoidCallback? callback;
  final bool isDisabled;
  final Color color;
  final bool isTransparent;
  final double? height;
  final double? width;
  final double borderRadius;
  final double horizontalPadding;
  const ButtonWithContent(
      {Key? key,
      this.width = double.infinity,
      this.height = 40,
      this.isTransparent = false,
      this.borderRadius = 4,
      this.child,
      this.callback,
      this.isDisabled = false,
      this.horizontalPadding = 13,
      this.color = AppTheme.accent})
      : super(key: key);

  @override
  _ButtonWithContentState createState() => _ButtonWithContentState();
}

class _ButtonWithContentState extends State<ButtonWithContent>
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
        ignoring: widget.isDisabled,
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
                    decoration: BoxDecoration(
                        color: widget.isTransparent
                            ? Colors.transparent
                            : widget.color,
                        borderRadius:
                            BorderRadius.circular(widget.borderRadius)),
                    child: widget.child,
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
