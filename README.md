# Widget Animator
[![Build Status](https://travis-ci.org/antonvinceguinto/widget-animator.svg?branch=master)](https://travis-ci.org/antonvinceguinto/widget-animator)
[![Build Status](https://img.shields.io/badge/pub-v1.0.0+7-green)]()

This package helps you to easily animate your widgets with just a few steps.

This works well on your ListView items and... actually all of your widgets!

# Demo

![](demo.gif)

# Using

```dart
 return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 32,
        itemBuilder: (context, index) {
            return WidgetAnimator(
              curve: Curves.easeIn, // Optional, choose the type of animation curve you want!
              duration: Duration(milliseconds: 120), // Optional, defaults to 290ms
              child: ListTile(
                title: Text('Item $index'),
              ),
            );
        },
      ),
    );
```

Check me out: https://antonguinto.com