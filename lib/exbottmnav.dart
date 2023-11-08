import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Navib(),
    ),
  ));
}
class Navib extends StatefulWidget{
  @override
  State<Navib> createState() => _NavibState();
}

class _NavibState extends State<Navib> {
  int index=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
         items: [
           TabItem(icon: Icons.home,title: "Home"),
           TabItem(icon: Icons.map,title: "Map"),
           TabItem(icon: Icons.message,title: "Msg"),
         ],

      ),
      body: Text("welcome"),

    );
  }
}