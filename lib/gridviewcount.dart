import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridvcount(),));
}

class Gridvcount extends StatelessWidget {
  var image=["asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png"];
  var name=["rock","anotony","wee","trr","ree","yhh","h6","hff","yyt","iiii"];
  var rate=["1","2","5","6","8","66","55","44","66","88"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //GridView.count(crossAxisCount:3,         //fixed count with screen size
              GridView.extent(maxCrossAxisExtent: 300,//extented count with screen size
        children: List.generate(10, (index) {
          return Card(
            child: Column(
              children: [
                Image(image: AssetImage(image[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 100,),
                    Text(rate[index]),
                  ],
                )
              ],
            ),
          );
        },
        ),
      ),
    );
  }
}
