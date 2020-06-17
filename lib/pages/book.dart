import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  createState() => _BookPage();
}

class _BookPage extends State<Book> with SingleTickerProviderStateMixin{
  bool isAnimation = true;

  Animation<double> animation;
  // Animation<double> animationTwo;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = AnimateTween(0, 300);
    //启动动画(正向执行)
    controller.forward();
  }

  // 动画执行
  AnimateTween(int begin, int end){
    new Tween(begin: begin, end: end).animate(controller)
      ..addListener(() {
        setState(()=>{
          isAnimation = !isAnimation
        });
    });
  }

  @override
  Widget build(BuildContext context) {

    final my_width = MediaQuery.of(context).size.width / 100;
    final my_height = MediaQuery.of(context).size.height / 100;
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child : AppBar(
          title: Text("Book", style : new TextStyle(color : Colors.white)),
          backgroundColor: Colors.grey[600], // 头部背景色
        )
      ),
      body: Container(
        // width: my_width * 30,
        // height: my_height * 5,
        width : animation.value,
        height: animation.value,
        color: Color(0xfff98004),
        alignment: Alignment(0, 0),
        child: Text("Book", style: new TextStyle(fontSize : 20, fontWeight : FontWeight.bold),),
      ),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }

}