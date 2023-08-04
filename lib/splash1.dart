import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: splashUi(),));
}
class splashUi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/blue.jpg"))
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/chef.png",height: 150,color: Colors.white),
              Text("Freash Food",style: GoogleFonts.pacifico(fontSize: 50,
              fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Tasty & Healty",style: GoogleFonts.pacifico(fontSize: 25,
                  fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}