import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview2(),));
}


class Listview2 extends StatelessWidget {
  var name=["bombey","shifna","manhar","nihal","raseen","shayan"];
  var number=[1234536,1234,1234,3456,2345,4567];
  var image = [
    
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("watsapp"),
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child:Text("settings")),
              PopupMenuItem(child:Text("profile")),
              PopupMenuItem(child:Text("broadcast")),
              PopupMenuItem(child:Text("help")),
            ];
          })
        ],

      
      ),
      body: ListView(
        children:List.generate(6, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text("\ ${number[index]}"),
            leading:Icon(Icons.person),
            trailing: Wrap(
              direction: Axis.vertical,
              children: [
                Text("12:30"),
                SizedBox(width: 10),
                CircleAvatar(
                  minRadius: 4,
                maxRadius: 10,
                backgroundColor: Colors.teal,
                child:Text("3"),   
                )
              ],
            ),  
          ),
        ))
      ),
    );
  
  }
}

