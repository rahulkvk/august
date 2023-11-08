import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Slivver(),
    ),
  ));
}
class Slivver extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            title: Text("Conversations",style: TextStyle(color: Colors.black,fontSize: 33,fontWeight:FontWeight.bold),),
            actions: [
              TextButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("Add New",style: TextStyle(color: Colors.redAccent),),)
            ],
            bottom: AppBar(backgroundColor: Colors.white,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(color: Colors.white24),
                child: TextField(
                  decoration: InputDecoration(hintText: "Search...",border: OutlineInputBorder(borderRadius: BorderRadius.circular(22.10)),prefixIcon: Icon(Icons.search,)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading:CircleAvatar(backgroundImage: AssetImage("asstets/david.jpg"),),
                title: Text("Joy"),
                subtitle: Text("Hii"),
                trailing: Text("today"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/surya.jpg"),),
                title: Text("Rock"),
                subtitle: Text("Evden"),
                trailing: Text("11:12"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/surya1.jpg"),),
                title: Text("Smith"),
                subtitle: Text("heloo"),
                trailing: Text("11:11"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/suryapro.jpg"),),
                title: Text("Jack"),
                subtitle: Text("broo"),
                trailing: Text("10:45"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/surya.jpg"),),
                title: Text("Sam"),
                subtitle: Text("hey"),
                trailing: Text("10:10"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/suryapro.jpg"),),
                title: Text("Elena"),
                subtitle: Text("hooi"),
                trailing: Text("10:00"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/david.jpg"),),
                title: Text("Roy"),
                subtitle: Text("daa"),
                trailing: Text("9:45"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/suryapro.jpg"),),
                title: Text("Das"),
                subtitle: Text("hi"),
                trailing: Text("9:30"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("asstets/david.jpg"),),
                title: Text("Parthi"),
                subtitle: Text("njan avan ala"),
                trailing: Text("9:20"),
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("leo"),
                subtitle: Text("Leo"),
                trailing: Text("9:15"),
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("anu"),
                subtitle: Text("hey "),
                trailing: Text("9:10"),
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("Ashok"),
                subtitle: Text("2344"),
                trailing: Text("Yesterday"),
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("leo2"),
                subtitle: Text("6744"),
                trailing: Text("1-10-23"),
              ),
            ]
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.lightGreen,
          unselectedItemColor: Colors.redAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_outlined),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
             BottomNavigationBarItem(icon: Icon(Icons.contacts),label:"Contact"),

    ]
      ),

    );
  }

}