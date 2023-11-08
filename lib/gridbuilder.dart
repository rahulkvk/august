import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridbuilder(),));
}

class Gridbuilder extends StatelessWidget{
  var image=["asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png"];
  var name=["rock","anotony","wee","trr","ree","yhh","h6","hff","yyt","iiii"];
  var rate=["1","2","5","6","8","66","55","44","66","88"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
       return Card(
         child: Column(
           children: [
             Image(image: AssetImage(image[index])),
             Row(children: [
               Text(name[index]),
               //SizedBox(width: 100,),
               Text(rate[index]),
             ],)
           ],
         ),

       );
     },itemCount: name.length,),
   );
  }

}