import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Tab2(),
    ),
  ));
}
class Tab2 extends StatelessWidget{
  var name=["Anas","Rashab","Akash","Nehla","Anurag"];
  var msg=['1','3','2','5','2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context, index){
                return Card(
                  child: ListTile(
                    title: Text(name[index]),
                    trailing: Text(msg[index]),
                  ),
                );
    },childCount: name.length
    ),

    ),
    );
  }

}