import 'package:flutter/material.dart';
import 'package:nalelu/widgets/shared/n_tooltip.dart';

class TutorialContainer extends StatefulWidget {
  final Widget widget;
  final String instructions;
  final Color color;

  TutorialContainer({
    required this.widget,
    required this.instructions,
    this.color = Colors.lightBlue,
  });

  @override
  _TutorialContainerState createState() => _TutorialContainerState();
}

class _TutorialContainerState extends State<TutorialContainer> {
  late OverlayEntry overlayEntry;
  final GlobalKey key = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showOverlay();
    });
  }

  @override
  void dispose() {
    overlayEntry.remove();
    super.dispose();
  }

  void showOverlay() {
    final RenderBox renderBox =
        key.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final position = renderBox.localToGlobal(Offset.zero);

    overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned(
            left: position.dx,
            top: position.dy,
            width: size.width,
            height: size.height,
            child: GestureDetector(
              onTap: () {
                overlayEntry.remove();
              },
              child: Column(
                children: [
                  NTooltip(
                    message: widget.instructions,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: widget.color, width: 3),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      overlayEntry.remove();
                    }
                  , icon: Icon(Icons.close))
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: widget.widget,
    );
  }
}
