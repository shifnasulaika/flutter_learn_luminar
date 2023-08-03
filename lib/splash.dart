 import 'package:flutter/material.dart';
 void main(){
  runApp(MaterialApp(home: MysplashPage(),));
 }
 class MysplashPage extends StatelessWidget{
  //THIS PAGE DOES NOT UNDRTGO ANY SATATE CHANGES
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar:AppBar(title:Text("my splash page"),
    ),
    );
  }
}