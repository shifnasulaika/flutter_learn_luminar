import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ngnfnf/listview2.dart';

class spalsh3 extends StatefulWidget {
  

  @override
  State<spalsh3> createState() => _spalsh3State();
}

class _spalsh3State extends State<spalsh3> {
  @override
  void initState(){
    Timer(Duration(seconds: 2),(){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => Listview2())));
    });
  }




  Widget build(BuildContext context) {
    return Scaffold(
      
    

      );
  }
}