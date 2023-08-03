import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    home: Listview1(),
  ));
}

class Listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        children: [
          Center(
            child:Text(
              "items",
              style: GoogleFonts.pacifico(),
            )
          ),
          
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
            title:Text("Biriyani"),
            subtitle: Text("\$120"),
            trailing: Icon(Icons.shopping_cart),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://placehold.jp/150x150.png"))
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