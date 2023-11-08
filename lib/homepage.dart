import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery:true,
//       debugShowCheckedModeBanner: false,
//       home: Homepage(),
//     ),
//   )); //sample is classname
// }

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      body: ListView(
        children: [
          Card(color:Colors.cyan,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("asstets/signp.png")),
              title: Text("Joy"),
              subtitle: Text("1234456735"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.orangeAccent,
            child: ListTile(
              leading: Icon(Icons.sports_football),
              title: Text("Jack",style: TextStyle(color: Colors.redAccent),),
              subtitle: Text("433322121"),
              trailing: Icon(Icons.call),
            ),
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("David"),
            subtitle: Text("8765998811",style: TextStyle(color: Colors.brown),),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.sports_cricket),
            title: Text("Smith"),
            subtitle: Text("4343788721"),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }

}