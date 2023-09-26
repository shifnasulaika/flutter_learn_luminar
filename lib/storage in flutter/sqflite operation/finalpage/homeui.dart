import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/finalpage/loginpage.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/finalpage/signuppage.dart';
void  main(){
  runApp(MaterialApp(home: Homeui(),));

}
class Homeui extends StatelessWidget {
  const Homeui({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 100,),
            Text("welcome",
            style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
            Image.asset("name"),
            SizedBox(height: 100,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style:ElevatedButton.styleFrom(
                minimumSize:const Size(150,50),
                backgroundColor: Colors.blue,
                elevation:0,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
               onPressed:() {
                 Navigator.of(context).push(MaterialPageRoute(builder: ((context)
                 => Loginpage())));
               }, 
               
               child: const Text("Login")),
               SizedBox(width: 30,),

               ElevatedButton(
                style:ElevatedButton.styleFrom(
                minimumSize:const Size(150,50),
                backgroundColor: Colors.blue,
                elevation:0,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
               onPressed:() {
                 Navigator.of(context).push(MaterialPageRoute(builder: ((context)
                 => Sign_up())));
               }, 
               child: const Text("Signup")),
               SizedBox(width: 30,),

            ],)
           
            
           
          ],
        ) ,
      ),
    );
  }
}