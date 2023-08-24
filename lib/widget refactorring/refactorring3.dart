void main(){
  runApp(MaterialApp(home:Refactorring3(),));
}




  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Refactorring3 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refactorrring 3"),

      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,Index){
        return MyRefactorringWidget();
      }),
    );
  }
  }
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}