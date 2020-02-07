import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    final Duration duration = const Duration(milliseconds: 300);
    return Expanded(
      child: Container(
        color: Color(0xFF4A4A58),
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.redAccent,
                      width: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.blueAccent,
                      width: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.greenAccent,
                      width: 100,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Transactions", style: TextStyle(color: Colors.white, fontSize: 20),),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Macbook"),
                      subtitle: Text("Apple"),
                      trailing: Text("-2900"),
                    );
                  }, separatorBuilder: (context, index) {
                return Divider(height: 16);
              }, itemCount: 10)
            ],
          ),
        ),
      ),
      ),
    );
  }
}