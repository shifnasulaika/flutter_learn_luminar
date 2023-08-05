import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Listviewseperated(),
  ));
}

class Listviewseperated extends StatelessWidget {
  var month=["jnry","fbry","mrch","aprl","may","june","july","aug","sept","oct","nvm","dec"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Seperated'),
     ),
     body: ListView.separated(itemBuilder: (context, index){
      return  Card(
        child: Text(month[index]),
      );
     },
      separatorBuilder: (context,index){
        if (index % 4 ==0){
          return const Card(color: Colors.red,child: Text("Advertisement"),
          );
        }else{
          return const SizedBox();
        }
      },
      itemCount: 12),
    );
  }
}