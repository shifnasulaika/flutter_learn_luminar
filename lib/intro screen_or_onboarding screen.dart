import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pratice/bottomsheet.dart';
import 'package:flutter_pratice/clipperWidget.dart';
import 'package:introduction_screen/introduction_screen.dart';

class onboardingscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    PageDecoration pageDecoration =  PageDecoration(
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 40,
          color:Colors.purpleAccent,
        ),
      bodyTextStyle: TextStyle(
        fontSize: 30,
        color:Colors.greenAccent,
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(12, 53, 106,2.0),
          Color.fromRGBO(39, 158, 255,2.0),
          Color.fromRGBO(64, 248, 255,2.0),
        ],
        begin: Alignment.bottomRight,
          end: Alignment.topLeft
        )
      )
    );


    return IntroductionScreen(
      pages: [

        PageViewModel(
          decoration: pageDecoration,
          title:"First Page",
          body:'Introduction screen shows the details of the app and demo of pages',
          image:  IntroImage("https://images.unsplash.com/photo-1691965811796-e69e28e7c19f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ),

        PageViewModel(
          decoration: pageDecoration,
          title:"Second page",
          body:'Introduction screen shows the details of the app and demo of pages',
          image:  IntroImage("https://plus.unsplash.com/premium_photo-1692287215202-0cd9e8fa4c30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ),

        PageViewModel(
          decoration: pageDecoration,
          title:"Thrid page",
          body:'Introduction screen shows the details of the app and demo of pages',
          image:  IntroImage("https://images.unsplash.com/photo-1682685797229-b2930538da47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw0M3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ),
      ],
      onDone: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) => clipperWidget())),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => clipperWidget())),

      showSkipButton: true,
      skip: Text("Skip"),
      next:Icon(Icons.arrow_circle_right),
      done:Text("Done"),
      dotsDecorator: const DotsDecorator(
        size: Size(10,12),
        color:Colors.greenAccent,
        activeSize: Size(22,10),
        activeColor: Colors.redAccent,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        )
      ),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment:Alignment.center,
      child:Image.network(image,width:500),
    );
  }
}


void main(){
  runApp(MaterialApp(home:onboardingscreen(),));
}
