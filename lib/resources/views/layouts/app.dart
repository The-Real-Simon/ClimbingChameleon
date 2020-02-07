import 'package:flutter/material.dart';
import 'package:climbing_chameleon/resources/views/layouts/navbar.dart';
import 'package:climbing_chameleon/resources/views/dashboard.dart';

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
      body: Padding(
        padding: const EdgeInsets.only( top: 24),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Navbar( navbarTitle: widget.title, ),
              Dashboard(),
            ],
          ),
        ),
      ),
    );
  }
}