import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: lottanim(),
  ));

}
class lottanim extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lottie'),
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/images/animation/snap.json.json'),
          Lottie.network('https://lottie.host/f788a72f-789f-4780-8afe-517ee6e4f899/JnQ9XOfElr.json'),
        ],
      ),
    );
  }
}
