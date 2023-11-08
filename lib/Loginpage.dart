import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    ),
  )); //sample is classname
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => LoginpageState();
}

class LoginpageState extends State<Loginpage> {
  @override
  bool showpass=true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(decoration: BoxDecoration(image: DecorationImage(
        image: NetworkImage("https://as2.ftcdn.net/jpg/00/83/41/37/500_F_83413793_CzbGU2xGNTslVHUic9fUoh78c8s65CZ7.jpg"),fit:BoxFit.fill
      )),
      //   (gradient: LinearGradient(
      //   begin: Alignment.topCenter,
      //   end: Alignment.bottomRight,
      //   colors: [
      //     Colors.blueGrey,
      //     Colors.white,
      //     Colors.redAccent,
      //   ]
      // )),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image(
                image: AssetImage("asstets/infi.png"),
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2),
                    hintText: "UserName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50, top: 30),
                child: TextField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }
                        else{
                          showpass=true;
                        }
                      });
                    }, icon: Icon(showpass==true? Icons.visibility_off:Icons.visibility),),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90))),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){}, child: Text("Login"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
              SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Text("Sign in",style: GoogleFonts.allura(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.w300,
                textStyle: Theme.of(context).textTheme.titleMedium
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
