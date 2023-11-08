import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridvi(),));
}

class Gridvi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            child:Image(image: AssetImage("asstets/signp.png"),),
          ),
          Card(
            child:Image(image: AssetImage("asstets/signp.png"),),
          ),
          Card(
            child:Image(image: AssetImage("asstets/signp.png"),),
          ),
          Card(
            child:Image(image: AssetImage("asstets/signp.png"),),
          ),
          Card(
            child:Image(image: AssetImage("asstets/signp.png"),),
          ),
          Card(
            child:Image(image: AssetImage("asstets/signp.png"),),
          ),
        ],
      ),
    );
  }
}
