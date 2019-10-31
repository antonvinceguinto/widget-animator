import 'package:flutter/material.dart';

import 'widget_animator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Animator Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Widget Animator Demo'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 34,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  for (int i = 1; i <= 3; i++) ...[
                    WidgetAnimator(
                      duration: Duration(seconds: i),
                      child: FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          i == 1
                              ? Icons.access_alarm
                              : i == 2 ? Icons.map : Icons.email,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ]
                ],
              ),
            );
          }

          return WidgetAnimator(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 590),
            child: ListTile(
              title: Text('Wiget Animator is fun $i'),
              subtitle: Text('Easy animations $i'),
              leading: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.black87,
                ),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
