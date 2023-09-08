import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngnfnf/storage%20in%20flutter/shared%20prefences/simple%20login%20using%20shared/shared-login.dart';
import 'package:shared_preferences/shared_preferences.dart';
voidmain(){
  runApp(MaterialApp(home: RegisterationPage(),));
}

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({super.key});

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  
  final uname = TextEditingController();
  final email = TextEditingController();
  final pword = TextEditingController();
  @override

  late SharedPreferences preferences;

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text("REGISTER")),
      body:Center(child:Column(
        children: [

            Padding(padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'name',
                 label:Text("name"),
              ),
              controller: uname,

            ),),

            Padding(padding: const EdgeInsets.all(10),
            child:TextField(
              controller: email,
              decoration: const InputDecoration(
                label:Text("email"),
                hintText: 'email'
              ),
            ),),
            
            Padding(padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                 label:Text("passsword"),
                hintText: 'password'
              ),
              controller: pword,
            ),
            ),
             ElevatedButton(onPressed: ()async{
              preferences=await SharedPreferences.getInstance();
              String name= uname.text;
              String username=email.text;
              String password=pword.text;
              if(
                name !=""&& username  !=""&& password!=""
              ){
              preferences.setString('name',name);
              preferences.setString('username',username);
               preferences.setString('password',password);
              preferences.setBool('regitor', false);
              Navigator.push(context,MaterialPageRoute(builder: (context)=> loginShared()));}
              uname.text="";
              email.text="";
               pword.text="";
            }, child: const Text("REGISTOR"))

      ],),)

      );

  }
}