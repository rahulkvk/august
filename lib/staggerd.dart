import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Staggerd(),
    ),
  ));
  //runApp(MaterialApp(home: Staggerd(),));
}
class Staggerd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 5,children: [
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
            color: Colors.lightGreenAccent,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
            color: Colors.red,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
            color: Colors.black,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
            color: Colors.yellow,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
            color: Colors.white38,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
            color: Colors.brown,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
            color: Colors.blueGrey,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
            color: Colors.indigo,
          ))


        ],),
      ),
    );
  }

}