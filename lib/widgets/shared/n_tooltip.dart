import 'package:flutter/material.dart';

class NTooltip extends StatefulWidget {
  final String message;
  final Widget child;
  final TextStyle textStyle;
  final Color backgroundColor;
  final double borderRadius;

  NTooltip({
    required this.message,
    required this.child,
    this.textStyle = const TextStyle(color: Colors.white),
    this.backgroundColor = Colors.lightBlue,
    this.borderRadius = 8.0,
  });

  @override
  _NTooltipState createState() => _NTooltipState();
}

class _NTooltipState extends State<NTooltip> {
  late OverlayEntry overlayEntry;

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    overlayEntry.remove();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showTooltip();
    });
  }

  void showTooltip() {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);

    overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return Positioned(
          left: offset.dx,
          top: offset.dy + 60,
          child: Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              // TODO: Fix wrapping
              child: Text(widget.message, style: widget.textStyle),
            ),
          ),
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
  }
}
