import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children:[
            Text("hello There"),
            SizedBox(height:30),
            Text("Enter your details"),
            Container(decoration: 0
            )
          ]
        ),
      ),

    );
  }
}

void main(){
runApp(MaterialApp(home:MainPage(),));
}