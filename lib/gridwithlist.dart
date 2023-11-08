import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridlist(),));
}

class Gridlist extends StatelessWidget {
  var image=["asstets/signp.png","asstets/signp.png"];
  var name=["rock","anotony"];
  var rate=["1","2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: List.generate(10, (index) {
          return Card(
            child: Column(
              children: [
                Image(image: AssetImage(image[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 120,),
                    Text(rate[index]),

                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
