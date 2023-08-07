import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView4(),
  ));
}


class GridView4 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 50,
       children: List.generate(
          15, 
          (index) => const Card(
            child: Center(
              child: Text("hello"),
            ),

          )),
      ),
     

    );
  }
}