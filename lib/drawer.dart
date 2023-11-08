import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Drawer1(),
    ),
  ));
}
//user header portion
//list
class Drawer1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              //decoration: BoxDecoration(image: DecorationImage(image:AssetImage("asstets/surya.jpg"),fit: BoxFit.fill)),
              accountName: Text("JOS"),
                accountEmail: Column(
                  children: [
                    Text("Luminartach@gmail.com"),
                    Row(
                      children: [
                        Text("1200 Following"),
                        Text(("100 Follows"))
                      ],
                    ),
                  ],
                ),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("asstets/surya.jpg"),),

            // otherAccountsPictures: [
            //   CircleAvatar(backgroundImage: AssetImage("asstets/surya.jpg"),),
            //   CircleAvatar(backgroundImage: AssetImage("asstets/railk.jpg"),)
            // ],
            ),

            //body portion
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Message"),
            ),
            //divider
            ListTile(
              leading: Icon(Icons.sync),
              title: Text("Sync"),
            ),
            ListTile(
              leading: Icon(Icons.recycling),
              title: Text("Recover"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Text("Profile"),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Text("Communicate"),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review_outlined),
              title: Text("Rate Us"),
            ),

          ],

        ),
      ),

    );
  }

}