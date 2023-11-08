import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Tabbar2(),
    ),
  ));
}
class Tabbar2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 7,
     child: Scaffold(
       appBar: AppBar(
         title: Text("NewWhatsApp"),
         backgroundColor: Colors.green,
         actions: [
           Padding(
             padding: const EdgeInsets.only(right:5),
             child: Icon(Icons.search_rounded),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 5),
             child: Icon(Icons.backup),
           ),
           PopupMenuButton(itemBuilder: (context){
             return[
               PopupMenuItem(child: Text("Settngs")),
               PopupMenuItem(child: Text("Help")),
               PopupMenuItem(child: Text("Invite")),
             ];
           })

         ],
         bottom: TabBar(
           isScrollable:true,
           indicatorColor: Colors.blue,
           labelColor: Colors.black,
           unselectedLabelColor: Colors.white38,

           indicator: UnderlineTabIndicator(
             borderSide: BorderSide(width: 5),
             insets: EdgeInsets.symmetric(horizontal: 12)
           ),

           tabs: [
           Tab(icon: Icon(Icons.camera_alt_sharp),text: ("Camera"),),
           Tab(icon: Icon(Icons.contacts),text: ("Contacts"),),
           Tab(icon: Icon(Icons.view_agenda),text: ("Status"),),
           Tab(icon: Icon(Icons.download),text: ("Downloads"),),
           Tab(icon: Icon(Icons.alarm),text: ("Alarm"),),
           Tab(icon: Icon(Icons.upload),text: ("Uploads"),),
           Tab(icon: Icon(Icons.close),text: "Close",),

         ],),
       ),
       body: TabBarView(children: [
         Center(child: Text("Camera")),
         Text("Contacts")
       ],),
       
     ),
   );
  }

}