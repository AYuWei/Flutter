import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ZhangTaiGuanLi/pages/book.dart';
import 'package:ZhangTaiGuanLi/pages/home.dart';
import 'package:ZhangTaiGuanLi/pages/music.dart';
import 'package:ZhangTaiGuanLi/pages/movie.dart';


// 缩放

class MyPage extends StatefulWidget{
  _MyPage createState() => _MyPage();
}

class _MyPage extends State{
  double _width = 200.0;
  int _currentIndex = 0; 
  // 存储切换页面
  final List<Widget> _children = [Home(), Book(), Music(), Movie()]; 
  // 存储底部导航
  final List<BottomNavigationBarItem> _list = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title : Text("Home"),
      backgroundColor: Colors.orange
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.book),
      title : Text("Book"),
      backgroundColor: Colors.orange
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.music_video),
      title : Text("Music"),
      // backgroundColor: Colors.orange
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.movie),
      title : Text("Movie"),
      backgroundColor: Colors.orange
    ),
  ];


  @override
  Widget build(Object context) {
    return new Scaffold(
        backgroundColor: Colors.grey[600],
        // 构建底部导航条
        bottomNavigationBar: BottomNavigationBar(
          items: _list,
          type: BottomNavigationBarType.fixed, //  fixed 固定在底部
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          backgroundColor: Colors.grey[400],
          fixedColor : Colors.blueAccent
        ),

        body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }

}