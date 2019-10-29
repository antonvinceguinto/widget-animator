# Widget Animator
[![Build Status](https://travis-ci.org/antonvinceguinto/widget-animator.svg?branch=master)](https://travis-ci.org/antonvinceguinto/widget-animator)
[![Build Status](https://img.shields.io/badge/pub-v0.0.2-green)](#)

This package helps you to easily animate your widgets with just a few steps.

This works well on your ListView items and... actually all of your widgets!

Implemented animations:
* [x] Fade Transition
* [ ] Slide Transition(ltr/rtl)
* [ ] Size Transition
* [ ] Opacity Transition

# Using
```dart
 return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 32,
        itemBuilder: (context, index) {
            return WidgetAnimator(
              duration: Duration(milliseconds: 1000), // Optional, defaults to 290ms
              child: ListTile(
                title: Text('Item $index'),
              ),
            );
        },
      ),
    );
```