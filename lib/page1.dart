import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 点击效果

class MyPage extends StatefulWidget{
  _MyPage createState() => _MyPage();
}

class _MyPage extends State{
  bool _active = false;
  String name = "点击我试试？";

  void _handleTap(){
    setState(() {
      _active = !_active;
    });
  }
  void _changeName(String item){
    setState(() {
      name = item;
    });
  }

  @override
  Widget build(Object context) {
    return GestureDetector(
      // 单击
      onTap: () => {
        _handleTap(),
        _changeName("单击")
      },
      // 双击
      onDoubleTap: () => _changeName("双击"),
      // 长按
      onLongPress: () => _changeName("长按"),

      child: new Container(
        width : 200.0,
        height: 200.0,
        color :  _active ? Colors.lightGreen[700] : Colors.grey[600],
        child : new Center(
          child: Text(name, style: new TextStyle(fontSize : 30, color : Colors.white),)
        ),
      ),
    );
  }

}