import 'package:flutter/material.dart';

class StackedItemsScalingListViewBuilder extends StatefulWidget {
  const StackedItemsScalingListViewBuilder({
    Key key,
    @required this.children,
    @required this.itemsHeight,
  }) : super(key: key);
  final List<Widget> children;
  final double itemsHeight;
  @override
  _StackedItemsScalingListViewBuilderState createState() =>
      _StackedItemsScalingListViewBuilderState();
}

class _StackedItemsScalingListViewBuilderState
    extends State<StackedItemsScalingListViewBuilder> {
  double topItemIndex = 0;
  ScrollController controller = new ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.offset > 0) {
        setState(() {
          topItemIndex = (controller.offset / (widget.itemsHeight * 0.7));
        });
      } else {
        topItemIndex = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          double scale = 1.0;
          int topIndex = topItemIndex.toInt();
          if (topIndex == index && controller.offset > 20) {
            scale = 1 - (topItemIndex - topIndex);
          } else if (controller.offset <= 20) {
            scale = 1;
            topItemIndex = 0;
          }
          return Transform.scale(
            scale: scale,
            alignment: Alignment.bottomCenter,
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.7,
              child: widget.children[index],
            ),
          );
        },
        itemCount: widget.children.length,
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        controller: controller,
      ),
    );
  }
}