
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Hotel(),
    ),
  ));
}
class Hotel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.blue,
            floating: true,
            expandedHeight: 100,
            leading: Icon(Icons.drag_handle_outlined),
            title: Text("Type Your Location"),
            actions: [
              Icon(Icons.favorite_border)
            ],
            bottom:AppBar(backgroundColor: Colors.blue,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(80)),
                child: TextField(
                  decoration: InputDecoration(hintText: "Kakkanad,Kochi...",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              child: Stack(
                children: [
                 Positioned(
                   // left: 50,
                   // top: 40,
                   child: Padding(
                     padding: const EdgeInsets.only(top: 20,left: 20),
                     child: Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.hotel_outlined),
                         Text("hotel",),
                       ],
                     ),color: Colors.red,height: 100,width: 100,),
                   ),),
                  Positioned(
                    right: 144,
                      top: 20,
                      child: Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant_menu),
                          Text("Restaurent"),
                        ],
                      ),color: Colors.blue,height: 100,width: 100,)),
                  Positioned(
                    right: 20,
                      top: 20,
                      child: Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_cafe_outlined),
                          Center(child: Text("Cafe")),
                        ],
                      ),color: Colors.deepOrange,height: 100,width: 100,))
                ],
              ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: Column(
                  children: [
                    Stack(children:[
                      Image(image: AssetImage("asstets/hotel.jpg"),),
                      Positioned(child: Container(child: Icon(Icons.star_border,color: Colors.white,),),left: 350,),
                      Positioned(child: Container(color:Colors.white,width: 30,height: 30,child: Center(child: Text("\$18",)),),top: 200,left: 350,),
                      Positioned(child: Container(child: Icon(Icons.play_circle_outline_outlined,size: 200,color: Colors.white,),),left: 100,top: 20,right: 100,)
                    ],
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text("Super hotel near Infopark",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Text("Infopark road, Kochi"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Column(
                          children: [
                            Stack(children:[
                              Image(image: AssetImage("asstets/hotel1.jpg"),),
                              Positioned(child: Container(child: Icon(Icons.star_border,color: Colors.white,),),left: 350,),
                              Positioned(child: Container(color:Colors.white,width: 30,height: 30,child: Center(child: Text("\$30",)),),top: 200,left: 350,),
                              Positioned(child: Container(child: Icon(Icons.play_circle_outline_outlined,size: 200,color: Colors.white,),),left: 100,top: 20,right: 100,)
                            ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text("5 Star hotel near Marine",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text("Junction, Kochi"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Stack(children:[
                                      Image(image: AssetImage("asstets/hotel5.jpg"),),
                                      Positioned(child: Container(child: Icon(Icons.star_border,color: Colors.white,),),left: 350,),
                                      Positioned(child: Container(color:Colors.white,width: 30,height: 30,child: Center(child: Text("\$52",)),),top: 200,left: 350,),
                                      Positioned(child: Container(child: Icon(Icons.play_circle_outline_outlined,size: 200,color: Colors.white,),),left: 100,top: 20,right: 100,)
                                    ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Text("Near Cial",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text("Cial Area, Kochi"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Stack(children:[
                                      Image(image: AssetImage("asstets/hotel3.jpg"),),
                                      Positioned(child: Container(child: Icon(Icons.star_border,color: Colors.white,),),left: 350,),
                                      Positioned(child: Container(color:Colors.white,width: 30,height: 30,child: Center(child: Text("\$72",)),),top: 200,left: 350,),
                                      Positioned(child: Container(child: Icon(Icons.play_circle_outline_outlined,size: 200,color: Colors.white,),),left: 100,top: 20,right: 100,)
                                    ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Text("Near Menakka",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text("Kakkanad, Kochi"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Stack(children:[
                                      Image(image: AssetImage("asstets/hotel2.jpg"),),
                                      Positioned(child: Container(child: Icon(Icons.star_border,color: Colors.white,),),left: 350,),
                                      Positioned(child: Container(color:Colors.white,width: 30,height: 30,child: Center(child: Text("\$82",)),),top: 200,left: 350,),
                                      Positioned(child: Container(child: Icon(Icons.play_circle_outline_outlined,size: 200,color: Colors.white,),),left: 100,top: 20,right: 100,)
                                    ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Text("Kaloor te aduth Kakkanad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text("Kaloor, Kochi"),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),Icon(Icons.star_rate,color: Colors.green,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
  
}