import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  createState() => _MoviePage();
}

class _MoviePage extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child : AppBar(
          title: Text("Movie", style : new TextStyle(color : Colors.white)),
          backgroundColor: Colors.grey[600], // 头部背景色
        )
      ),

   
    );
  }

}