import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listbld extends StatelessWidget {
  var name=["roy","rock,jasmin"];
  var icon=[Icons.person,Icons.sports_football,Icons.sports_cricket];
  var phone=["123","322","333"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (context ,index){
        return Card(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          ),
        );

      }
      ),
    );
  }
}
