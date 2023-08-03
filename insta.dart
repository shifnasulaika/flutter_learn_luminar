import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(home: Insta()));
}
class Insta extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black87,
      body:
      Center(
        child:
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(
            begin: Alignment.topCenter,
            end : Alignment.bottomLeft,
            colors: [
              Colors.purple,
              Colors.pink,
              Colors.redAccent,
              Colors.orange,
              Colors.yellowAccent,
            ],
          ).createShader(bounds),
       child:
    FaIcon(FontAwesomeIcons.instagram,size: 100,),
      ),
    ),
    );
  }
}