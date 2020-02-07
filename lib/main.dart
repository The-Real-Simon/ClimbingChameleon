import 'package:flutter/material.dart';

import 'resources/views/layouts/app.dart';

void main() => runApp(ClimbingChameleon());

class ClimbingChameleon extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Climbing Chameleon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppLayout(title: 'Climbing Chameleon'),
    );
  }
}
