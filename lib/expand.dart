import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Expands(),));
// }
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Expands(),
    ),
  ));
}
class Expands extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.blue,height: 100,),
          Expanded(child: Container(color: Colors.black,)),
          Expanded(child: Container(color: Colors.green,)),
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.orange,)),
          
          // expanded use- baaki ulla screen space devides equaly


        ],
      ),
    );
  }

}