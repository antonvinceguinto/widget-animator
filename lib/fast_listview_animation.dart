library fast_listview_animation;

import 'dart:async';
import 'package:flutter/material.dart';

class Animator extends StatefulWidget {
  final Widget child;
  final Duration time;
  final Duration duration;

  Animator(this.child, this.time, {this.duration});

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<Animator>
    with SingleTickerProviderStateMixin {
  Timer timer;
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: widget.duration, vsync: this);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    timer = Timer(widget.time, animationController.forward);
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: widget.child,
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: animation.value,
          child: Transform.translate(
            offset: Offset(0.0, (1 - animation.value) * 20),
            child: child,
          ),
        );
      },
    );
  }
}

class WidgetAnimator extends StatelessWidget {
  final Widget child;
  final Duration duration;

  WidgetAnimator({@required this.child, this.duration = const Duration(milliseconds: 290)});

  @override
  Widget build(BuildContext context) {
    return Animator(
      child,
      wait(),
      duration: duration,
    );
  }

  Duration wait() {
    Timer timer;
    Duration duration = Duration();

    if (timer == null || !timer.isActive) {
      timer = Timer(Duration(microseconds: 120), () {
        duration = Duration();
      });
    }
    duration += Duration(milliseconds: 100);
    return duration;
  }
}
