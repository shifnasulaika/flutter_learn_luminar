import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(home: clipper(),));
}

class clipper extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRRect(child:
          Container(
            child: Align(
              heightFactor: .4 ,
              widthFactor: .4 ,
              child: Image.network("https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
          )
          ),

          ClipRRect(
            borderRadius:BorderRadius.circular(500) ,
            child: Image.network("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60") ,
          ),

          ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),

          ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1691247722415-408599fb5919?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
          ),

          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Image.network("https://images.unsplash.com/photo-1558481795-7f0a7c906f5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=896&q=80"),
          ),

          

        ],
      ),
    );
  }
}

