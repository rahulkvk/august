import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Wrk(),
    ),
  ));
}
class Wrk extends StatelessWidget{
  var ico=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_note];
  var txt=["Home","Email","Alam","Wallet","Backup","Book","Camere","Person","Print","Phone","Notes","Music"];
  var clr=[Colors.orange,Colors.pink[100],Colors.orange,Colors.red,Colors.grey,Colors.green,Colors.blueGrey,Colors.blue,Colors.orangeAccent,Colors.white54,Colors.green,Colors.indigo];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body:GridView.count(crossAxisCount: 3,
      children: List.generate(12, (index) {
       return Card(color: clr[index],
         child: Column(
           children: [SizedBox(height: 3,),
             Icon(ico[index],size:40,),
             Text(txt[index]),
           ],
         ),
       );
      })),


    );
  }

}