import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(
    home: Stag_Grid(),
  ));

}


class Stag_Grid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered GridView"),
        ),
        body:SingleChildScrollView(
          child: StaggeredGrid.count(crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(color: Colors.green,
            child: const Center(
              child: Icon(Icons.cabin)
            ),
            )),
             StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(color: Colors.orange,
            child: const Center(
              child: Icon(Icons.add)
            ),
            )),
             StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(color: Colors.red,
            child: const Center(
              child: Icon(Icons.camera)
            ),
            )),
             StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(color: Colors.grey,
            child: const Center(
              child: Icon(Icons.contact_emergency)
            ),
            ))

          ],),
        )
    );
  }}