import 'package:august/stack-ex.dart';
import 'package:august/tab2.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Navig(),
    ),
  ));
}
class Navig extends StatefulWidget{
  @override
  State<Navig> createState() => NavigState();
}

class NavigState extends State<Navig> {
  var screen=[
    Tab2(),
    Drawer1(),
    Stackt(),
    Stackt(),
  ];
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.redAccent,
        currentIndex: index,
        onTap: (taindec){
          setState(() {
            index=taindec;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label:"Account"),
        BottomNavigationBarItem(icon: Icon(Icons.logout),label: "Logout"),
      ],),
      body: screen[index],
    );
  }
}