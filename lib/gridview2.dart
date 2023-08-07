import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Gridview2(),
  ));
}

class Gridview2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview builder"),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
       itemCount: 20,
       itemBuilder: (context,index){
        return const Card(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("item"),
              Icon(Icons.ac_unit)
            ],),
          ),
        );
       }),
    );
  }
}