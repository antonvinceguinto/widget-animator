import 'package:fast_listview_animation/fast_listview_animation.dart';
import 'package:flutter/material.dart';

class CustomAnimatedList extends StatefulWidget {
  const CustomAnimatedList({
    @required this.listCount,
    @required this.listItem,
  });

  final int listCount;
  final Function(BuildContext, int) listItem;

  @override
  _CustomAnimatedListState createState() => _CustomAnimatedListState();
}

class _CustomAnimatedListState extends State<CustomAnimatedList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: widget.listCount,
        itemBuilder: (BuildContext context, int index) {
          return WidgetAnimator(
            child: widget.listItem(context, index),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 1);
        },
    );
  }
}
