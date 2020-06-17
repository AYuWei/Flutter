import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  createState() => _HomePage();
}

class _HomePage extends State{
  @override
  Widget build(BuildContext context) {
    final my_width = MediaQuery.of(context).size.width;
    final my_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child : AppBar(
          title: Text("Home", style : new TextStyle(color : Colors.white)),
          backgroundColor: Colors.grey[600], // 头部背景色
        )
      ),
      body: Center(
        child: Container(
          width: 150.0,
          height: 50.0,
          alignment: Alignment(0, 0),
          color: Color(0xfff98400),
          child: Text("${my_width} == ${my_height}"),
        ),
      ),
    );
  }

}