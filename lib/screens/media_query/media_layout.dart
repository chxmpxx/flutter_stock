import 'package:flutter/material.dart';

class MediaLayoutScreen extends StatefulWidget {
  MediaLayoutScreen({Key? key}) : super(key: key);

  @override
  State<MediaLayoutScreen> createState() => _MediaLayoutScreenState();
}

class _MediaLayoutScreenState extends State<MediaLayoutScreen> {

  gridViewForPhone(Orientation orientation) {
    return GridView.count(
      // แนวตั้ง 2 คอลัมน์
      crossAxisCount: 2,
      // แนวนอน 1 คอลัมน์
      childAspectRatio: 1.0,
      // ช่องไฟแนวตั้งห่างกัน 4 หน่วย
      mainAxisSpacing: 4.0,
      // ช่องไฟแนวนอนห่างกัน 4 หน่วย
      crossAxisSpacing: 4.0,

      children: List.generate(100, (index) {
        return Card(
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text('$index'),
          ),
        );
      })
    );
  }

    gridViewForTablet(Orientation orientation) {
    return GridView.count(
      // อยู่แนวตั้งแสดง 4 คอลัมน์ แนวนอน 6 คอลัมน์
      crossAxisCount: orientation == Orientation.portrait ? 4 : 6,
      // แนวนอน 1 คอลัมน์
      childAspectRatio: 1.0,
      // ช่องไฟแนวตั้งห่างกัน 4 หน่วย
      mainAxisSpacing: 4.0,
      // ช่องไฟแนวนอนห่างกัน 4 หน่วย
      crossAxisSpacing: 4.0,

      children: List.generate(100, (index) {
        return Card(
          child: Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text('$index'),
          ),
        );
      })
    );
  }

  @override
  Widget build(BuildContext context) {

    // ดูค่าด้านที่สั้นที่สุด
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600.0;

    // เช็คว่าหน้าจออยู่แนวตั้งหรือแนวนอน
    final orientation =  MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("$shortestSide")
      ),
      body: useMobileLayout ? gridViewForPhone(orientation) : gridViewForTablet(orientation),
    );
  }
}