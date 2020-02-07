import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  AppLayout({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Climbing Chameleon',
            ),
          ],
        ),
      ),
    );
  }
}