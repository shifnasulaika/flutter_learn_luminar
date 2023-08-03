import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contactlist1(),
  ));
}

class Contactlist1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contactlist"),
      ),
      body: ListView(
        children: [
          
          Card(
            child:ListTile(
            title:Text("HamBurger"),
            subtitle: Text("\$123"),
            trailing: Icon(Icons.shopping_cart),
            leading: Image.asset("assets/images/hamburger.png"),
            ),
          ),
          Card(
            child:ListTile(
            title:Text("pizza"),
            subtitle: Text("\$234"),
            trailing: Icon(Icons.shopping_cart),
            leading: Image.asset("assets/images/pizza.png"),
            ),
          ),
          Card(
            child:ListTile(
            title:Text("pizza"),
            subtitle: Text("\$40"),
            trailing: Icon(Icons.shopping_cart),
            leading: Image.asset("assets/images/pizza.png"),
            ),
          ),
          Card(
            child:ListTile(
            title:Text("Tovino"),
            subtitle: Text("9087653254"),
            trailing: Icon(Icons.call),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/TovinoThomas_260421_1200_Digital%20Native.jpg?itok=EXXuRjwF"))
            ),
          ),
          
          // Text("Item 1"),
          // Text("Item 2"),
          // Text("Item 3"),
          // Text("Item 4"),
          // Text("Item 5"),
        ],
      ),
    );
  }
}