import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  Navbar({Key key,
    this.navbarColor = Colors.blue,
    this.navbarTitle,
    this.navbarTitleColor = Colors.white
  }) : super(key: key);


  final Color navbarColor;
  final Color navbarTitleColor;
  final String navbarTitle;

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: 45,
      color: widget.navbarColor,
      child: Row(
        mainAxisSize        : MainAxisSize.max,
        mainAxisAlignment   : MainAxisAlignment.spaceBetween,
        crossAxisAlignment  : CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Icon(Icons.menu, color: widget.navbarTitleColor),
            onTap: () {
              print("Menu Icon pressed");
            }
          ),
          Text(
              widget.navbarTitle,
              style: TextStyle(
                  fontSize: 20, color: widget.navbarTitleColor
              ),
          ),
          Icon(Icons.settings, color: widget.navbarTitleColor),
        ],
      ),
    );
  }
}