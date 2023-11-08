import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Seperated(),
    ),
  )); //sample is classname
}
class Seperated extends StatelessWidget {
  var name = ["roy", "rock,jasmin"];
  var icon = [Icons.person, Icons.sports_football, Icons.sports_cricket];
  var phone = ["123", "322", "333"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(icon[index]),
            ),

          );
        }, separatorBuilder: (context, index) {
          return Divider(
            thickness: 3,
            color: Colors.orangeAccent,
          );
        }, itemCount: name.length)
    );

  }
}

