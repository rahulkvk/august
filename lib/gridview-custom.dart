import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewc(),));
}

class gridviewc extends StatelessWidget {
  var image=["","asstets/railk.jpg","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png","asstets/signp.png"];
  var name=["rock","anotony","wee","trr","ree","yhh","h6","hff","yyt","iiii"];
  var rate=["1","2","5","6","8","66","55","44","66","88"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         childrenDelegate: SliverChildBuilderDelegate((context, index){
           // return Card(
           //   child: ListTile(
           //     leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
           //     trailing: Icon(Icons.car_crash),
           //     title: Text(rate[index]),
           //     subtitle: Text(name[index]),
           //   ),
           // );
           return Container(color: Colors.blue,
             child: Column(
               children: [
                 Image(image: (AssetImage(image[index])),),
                 Text(name[index]),
                 SizedBox(width: 5,),
                 Text(rate[index]),
               ],
             ),

           );

         })),
   );
  }
}
