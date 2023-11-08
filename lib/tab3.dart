import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Contacts(),
    ),
  ));
}
class Contacts extends StatelessWidget{
  var name=["Thomes","Tom","Roy","Jack","Smith"];
  var phone=['9962736271','8872539271','7635271863','8892635182','90753127'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
          (context, index){
            return Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),
              ),
            );
          },childCount: name.length
      )),

    );
  }

}