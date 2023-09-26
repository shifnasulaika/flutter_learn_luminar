import 'package:flutter/material.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/loginregister/loginpage.dart';



class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  final name  = TextEditingController();
  final email = TextEditingController();
  final pwd   = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [
            Text("Registration",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic,color: Colors.red,fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: name,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter your Name",
            labelText: "Name",
            prefixIcon: Icon(Icons.person)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: email,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Please Enter Your Email ",
            labelText: "email",
            prefixIcon: Icon(Icons.email)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            obscureText: true,
            obscuringCharacter: "*",
            controller: pwd,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "please Enter password",
            labelText: 'password',
            prefixIcon: Icon(Icons.password),
            suffixIcon:Icon(Icons.remove_red_eye_sharp)),
          ),
        ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginn()));
              },
              child: const Text("Register Here",style: TextStyle(fontWeight: FontWeight.bold),))
          ],
        ) ,
      ),
    );
  }
}