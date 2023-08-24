import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Refrahome (),
  ));
}
class Refrahome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView using refractoring"),

      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (context,index){
        return MyWidget();
       }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/hamburger.png",
          height: 100,
          
          ),
          const Text("burger"),
          const Text("\$ 100"),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.favorite), label: Text('wishist')),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(onPressed:() {}, icon: Icon(Icons.shopping_cart), label: Text("buy now")),

          ],
          )

      ]),
    );
  }
}