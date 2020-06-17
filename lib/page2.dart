import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 滑动， 拖动

class MyPage extends StatefulWidget{
  _MyPage createState() => _MyPage();
}

class _MyPage extends State{
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(Object context) {
    return new Scaffold(
        backgroundColor: Colors.grey[600],
        //  设置头部导航栏的高度。
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child : AppBar(
            title : Text("滑动 - 拖动"),
            backgroundColor: Colors.grey[600], // 头部背景色
          )
        ),
        // appBar: AppBar(
        //   title : Text("滑动 - 拖动"),
        //   backgroundColor: Colors.grey[600], // 头部背景色
        // ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top : _top,
              left : _left, 
              //     GestureDetector
              child: GestureDetector(
                onTap: (){
                  print("点击");
                },

                // child : CircleAvatar(child : Text("拖动") ),
                child: Container(
                  width: 150.0,
                  height: 50.0,
                  alignment: Alignment(0, 0),
                  color: Colors.lightGreen[500],
                  child : Text("滑动 - 拖动", style: new TextStyle(fontSize : 20, color : Colors.white),),
                ),

                //  手指按下触发
                onPanDown: (DragDownDetails e){
                  print("用户手指按下 ： ${e.globalPosition}");
                },

                // 手指滑动时会触发
                onPanUpdate: (DragUpdateDetails e) {
                  print("你滑动了： ${e.delta} == ${e.globalPosition} == ${e.localPosition}" );
                  setState(() {
                    _left += e.delta.dx;
                    _top += e.delta.dy;
                  });
                },

                // 滑动结束时触发。
                onPanEnd: (DragEndDetails e){
                  print("滑动结束 ： ${e.velocity}");
                },

                //  缩放
                onScaleUpdate: (ScaleUpdateDetails details){
                  print("缩放 ： ${details.focalPoint}");
                },

              ),
            )
          ],
        ),
    );
  }

}