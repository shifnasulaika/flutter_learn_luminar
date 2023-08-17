import 'package:flutter/material.dart';
import 'package:ngnfnf/passing%20data%20between%20screance/deatilespage.dart';

import 'package:ngnfnf/passing%20data%20between%20screance/dummy%20data.dart';

void main() {
  runApp(MaterialApp(
    home: ProductHome(),
    routes: {
      "details":(context)=>Productdetails(),
    },
  ));
}

class ProductHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Now"),
      ),
      body: ListView(
        children: product
            .map((productonebyone) =>
            Card(
              child: ListTile(
                leading: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(productonebyone["image"])))),
                title: Text(productonebyone['name']),
                subtitle: Text('\$ ${productonebyone['price']}'),
                onTap: () {
                  GotoNextPage(context, productonebyone['id']);
                },
              ),
            )).toList(),
      ),
    );
  }

  void GotoNextPage(BuildContext context, productId) {
    //productId = productonebyone['id']
    Navigator.pushNamed(context, 'details',arguments: productId);
  }
}