import 'package:august/gridviewcount.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Tab1(),
    ),
  ));
}
class Tab1 extends StatelessWidget{
  @override
  var ico=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.alarm];
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.count(crossAxisCount: 3,
          children: List.generate(6, (index) {
            return Card(
              child: Column(
                children: [SizedBox(height: 3,),
                  Icon(ico[index],size:40,),
                ],
              ),
            );
          })),

    );
  }

}