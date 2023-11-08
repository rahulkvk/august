import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Sample(),
    ),
  )); //sample is classname
}

class Sample extends StatelessWidget {
  //right click on sample to override
  @override
  Widget build(BuildContext context) {
    //error will go when retun type given
    return Scaffold(
      //widget tree is buildcontext and each item is context
      //scaffold is body of app
      appBar: AppBar(
        title: Text("Luminar"),
      ),
      body: Container( color: Colors.black87,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250,left: 50,right: 50),
            child: Column(
              children: [
                Image(image: AssetImage("asstets/infi.png"),height: 200,width: 200,),
                Text(
              "Flutter",
              style: TextStyle(fontSize: 33, color: Colors.blue[200],fontStyle:FontStyle.italic,fontWeight: FontWeight.w300),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
