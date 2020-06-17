import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  createState() => _MusicPage();
}

class _MusicPage extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child : AppBar(
          title: Text("Music", style : new TextStyle(color : Colors.white)),
          backgroundColor: Colors.grey[600], // 头部背景色
        )
      ),
    );
  }

}