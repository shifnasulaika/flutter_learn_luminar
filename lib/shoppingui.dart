import 'package:flutter/material.dart';

class Shoppingui extends StatelessWidget {
  var Color =[]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(118.0),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
        return Container(
          height: 20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
          color: Color[index]),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,),
        )
      }),
      ),
    );
  
  }
}