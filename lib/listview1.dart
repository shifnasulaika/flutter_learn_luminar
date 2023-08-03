import 'package:flutter/material.dart';

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
            leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/R.e7ca9ad0d7c37c1cc4a699d02cab9edf?rik=Hhrrzejovan9cA&riu=http%3a%2f%2fi2.wp.com%2fwww.relishthebite.com%2fwp-content%2fuploads%2f2015%2f02%2fEGgBiryani-3.jpg&ehk=GE4QFp%2bQZUbu7geX95oap0TbykK5aeE7U0pWYm%2fQAlg%3d&risl=&pid=ImgRaw&r=0"))
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