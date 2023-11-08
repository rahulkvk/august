import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class Navg extends StatefulWidget{
  @override
  State<Navg> createState() => NavgState();
}
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Navg(),
    ),
  ));
}
class NavgState extends State<Navg> {
  int index=1;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Colors.blue,
       currentIndex: index,
       onTap: (tapindex){
         setState(() {
           index=tapindex;
         });
       },
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.fastfood),label: "Launchs"),
         BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label:"Cart"),
         BottomNavigationBarItem(icon: Icon(Icons.logout),label: "Logout"),
       ],

     ),

   );
  }
}