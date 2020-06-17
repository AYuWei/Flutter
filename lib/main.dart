import 'package:flutter/material.dart';
// import 'package:ZhangTaiGuanLi/page1.dart';
// import 'package:ZhangTaiGuanLi/page2.dart';
import 'package:ZhangTaiGuanLi/page3.dart';


// 状态管理
// 状态管理

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyPage(),
    );
  }
}

// class MyPage extends StatefulWidget{
//   _MyPage createState() => _MyPage();
// }

// class _MyPage extends State{
//   bool _active = false;
//   String name = "点击我试试？";

//   void _handleTap(){
//     setState(() {
//       _active = !_active;
//     });
//   }
//   void _changeName(String item){
//     setState(() {
//       name = item;
//     });
//   }

//   @override
//   Widget build(Object context) {
//     return GestureDetector(
//       // 单击
//       onTap: () => {
//         _handleTap(),
//         _changeName("单击")
//       },
//       // 双击
//       onDoubleTap: () => _changeName("双击"),
//       // 长按
//       onLongPress: () => _changeName("长按"),

//       child: new Container(
//         width : 200.0,
//         height: 200.0,
//         color :  _active ? Colors.lightGreen[700] : Colors.grey[600],
//         child : new Center(
//           child: Text(name, style: new TextStyle(fontSize : 30, color : Colors.white),)
//         ),
//       ),
//     );
//   }

// }