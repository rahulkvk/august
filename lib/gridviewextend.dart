import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridvie(),));
}
class Gridvie extends StatelessWidget {
  var image=["asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png"];
  var name=["rock","anotony","wee","trr","ree","yhh","h6","hff","yyt","iiii"];
  var rate=["1","2","5","6","8","66","55","44","66","88"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,crossAxisSpacing: 14,mainAxisSpacing: 20),
            //can  extent to more
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
    )
    );
  }
}
