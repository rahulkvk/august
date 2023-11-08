import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//appbar changing as scrolls
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Sliverss(),
    ),
  ));
}
class Sliverss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
          expandedHeight: 150,//to expand
            flexibleSpace: Container(color: Colors.black45,),

          title: Text("Slivers"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
          ],
            bottom: AppBar(
              elevation: 0,
              //to hide line
              title: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(hintText: "Search here",suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("BOSS"),
                subtitle: Text("12334444"),
              ),
            ]
          ))

        ],
      ),
    );
  }

}