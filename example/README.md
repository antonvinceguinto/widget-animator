# widget_animator_example

Demonstrates how to use the [widget animator plugin](https://github.com/antonvinceguinto/widget-animator)

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

## Getting Started

For help getting started with Flutter, view the online
[documentation](https://flutter.io/)