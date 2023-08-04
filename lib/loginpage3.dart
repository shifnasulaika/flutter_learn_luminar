import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login2 extends StatefulWidget{
  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('login with validation'),
      ),
      body:Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                  decoration: InputDecoration(
                  prefixIcon: Icon(
                      Icons.people,
                      color:Colors.yellow.shade400,
                  ),
                  hintText:"username",
                  border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)
              ) ),
                  validator:(username) {
                    if( username!.isNotEmpty ||  !username.contains('@') ){
                        return "fields are empty or in valid";
              } else{
                      return null;
              }
              },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                     decoration: InputDecoration(
                       hintText: 'password',
                         border:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(25)
                     )),
                validator:(password){
                       if( password!.isNotEmpty || password.length< 6){
                          return "field are empty or in valid";
                       }else{
                         return null;
                       }
                }
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('login')),
            TextButton(onPressed: () {}, child: Text('not a user? Register Here!')),
          ],
        )
      )
    );
  }
}

void main(){
  runApp(MaterialApp(home: login2(),));
}