import 'package:august/homepage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: logg(),
    ),
  )); //sample is classname
}


class logg extends StatefulWidget{

  @override
  State<logg> createState() =>loggstate();
  }
class loggstate extends State<logg> {
  bool showpass = true;
  GlobalKey<FormState>formkey=GlobalKey();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login screen"),
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.white38,
              Colors.redAccent,
            ]
          )),

          //wrap with form to monitor,validate..
          //form key-for multiple,value key-for single
          //column wrapwith widget and change widget to Form

          child: Form(
            key: formkey,
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
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2),
                        labelText: "UserName",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                    validator:(uname) {
                      if (uname!.isEmpty || !uname.contains('@') || !uname.contains('.')) {
                        return "please enter valid";
                      }
                      else{
                        return null;
                      }
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50, top: 30),
                  child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              }
                              else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(
                              showpass == true ? Icons.visibility_off : Icons
                                  .visibility),),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(90))),
                    validator: (password){
                      if(password!.isEmpty||password.length<6){
                        return "please enter valid";
                      }
                      else{
                        return null;
                      }
                    }
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                  }
                  else{
                    return null;
                  }
                }, child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(onPressed: () {},
                      child: Text("Sign in", style: GoogleFonts.allura(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.w300,
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .titleMedium
                      ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

