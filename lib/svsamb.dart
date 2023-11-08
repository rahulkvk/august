import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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


    );
  }

}