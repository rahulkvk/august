import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'carouselslider.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Farmer(),
    ),
  ));
}

class Farmer extends StatelessWidget{
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.green,
            pinned: true,
            title: Text("Farmers Fresh Zone"),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Text("Kochi"),
                ],
              ),
            ],
            bottom: AppBar(backgroundColor: Colors.green,
              title: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80)),
                  child: TextField(
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search for vegetables and fruites...",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 20),
                      child: Container(child: Text("Vegetables"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),border: Border.all(color: Colors.green)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,top: 20),
                      child: Container(child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Text("Fruites"),
                      ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),border: Border.all(color: Colors.green)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,top: 20),
                      child: Container(child: Text("Exotic Cuts"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),border: Border.all(color: Colors.green)),),
                    )
                  ],
                ),
              ),
              Container(//image
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.black),),height: 100,width: 100,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Column(
                          children: [
                            Icon(Icons.timer),
                            Text("30 Mins Policy"),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 20),
                        child: Column(
                          children: [
                            Icon(Icons.location_searching),
                            Text("Tracebility"),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Column(
                          children: [
                            Icon(Icons.home_work),
                            Text("Local Surrounding"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: Text("Shop By Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Gridbuilder(),
            ]
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightGreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label:"Account"),

          ]
      ),
    );
  }

}
class Gridbuilder extends StatelessWidget{
  var image=["https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F261279215866395457%2F&psig=AOvVaw3cW1d4AhHDy5Ft8S99VSp2&ust=1699008318240000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPjphqWRpYIDFQAAAAAdAAAAABAD",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F261279215866395457%2F&psig=AOvVaw3cW1d4AhHDy5Ft8S99VSp2&ust=1699008318240000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPjphqWRpYIDFQAAAAAdAAAAABAD",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F261279215866395457%2F&psig=AOvVaw3cW1d4AhHDy5Ft8S99VSp2&ust=1699008318240000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPjphqWRpYIDFQAAAAAdAAAAABAD",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F261279215866395457%2F&psig=AOvVaw3cW1d4AhHDy5Ft8S99VSp2&ust=1699008318240000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPjphqWRpYIDFQAAAAAdAAAAABAD",
  "asstets/surya.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage(image[index])),
            ],
          ),
        );
      },itemCount: image.length,),
    );
  }

}