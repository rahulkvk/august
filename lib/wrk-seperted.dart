import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Sep(),
    ),
  )); //sample is classname
}

class Sep extends StatelessWidget{
  var item=["List item0","List item1","List item2","List item3","List item4","List item5","List item6","List item7","List item8","List item9"];
  var sep=["Seperator0","Seperator1","Seperator2","Seperator3","Seperator4","Seperator5","Seperator6","Seperator7","Seperator8","Seperator9",];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text("ListView.seperated()"),
     ),
         body: ListView.separated(itemBuilder: (context,index){
     return Card(
       child: ListTile(
         title: Text(item[index]),
         //subtitle: Text(sep[index]),
       ),
         //subtitle: Text(phone[index]),
        // trailing: Icon(icon[index]),
       );

   },
   separatorBuilder: (context, index){
           return Container(
             child: Text(sep[index],style: TextStyle(color: Colors.white),),
             color: Colors.black45,
           );
   },
             itemCount: sep.length),

   );
  }

}