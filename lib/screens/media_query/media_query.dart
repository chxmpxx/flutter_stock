import 'package:flutter/material.dart';
import 'package:flutter_stock/themes/styles.dart';

class MediaQueryScreen extends StatefulWidget {
  MediaQueryScreen({Key? key}) : super(key: key);

  @override
  State<MediaQueryScreen> createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {

    // การอ่านขนาด กว้าง x สูง
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = 56.0;

    return Scaffold(
      
      // Defalut Status bar = 24 ปรับไม่ได้
      // Defalut Appbar height = 56
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
          title: Text("Media Query"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.pinkAccent,
            width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Center(child: Text("Screen: $screenSize", style: TextStyle(fontSize: 24),))
          ),
          // ทศนิยม 2 หลัก
          Container(
            color: Colors.orange,
            width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(child: Text("Screen Width: ${screenWidth.toStringAsFixed(2)}", style: TextStyle(fontSize: 24),))
          ),
          Container(
            color: Colors.yellow,
            width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4 - appBarHeight - 24,
            child: Center(child: Text("Screen Height: ${screenHeight.toStringAsFixed(2)}", style: TextStyle(fontSize: 24),))
          ),
        ]
      ),
    );
  }
}