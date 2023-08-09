import 'package:flutter/material.dart';

class GridviewCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview.custom"),),

      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
            List.generate(15, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:200,
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit:BoxFit.fill ,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1691229732670-f7034e54d2cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
                                )
                            )
                          ),
                        ),
                      ),
                      Text("Item.1",
                        style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.bold,),
                      ),
                      Text("\$280",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
              ),
            ))
          )),
    );
  }
}

void main(){
  runApp(MaterialApp(home: GridviewCustom(),));
}