import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class shopping_item extends StatelessWidget{
  @override
  var items = ["grapes",'orange','banan','apple','pinapple','mango','papay','blueberry','strawberry','jackfruit'];
  var price = ['100','150','500','50','100','40','45','99','100','120'];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Product List"),
        centerTitle: true,
        leading:IconButton(
          icon:FaIcon(FontAwesomeIcons.bars),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.cartShopping))
        ],
      ),

      body: ListView.builder(itemBuilder:(context,index){
       return Card(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),gapPadding: 4.0,borderSide: BorderSide(
        width: 1.0,
        color: Colors.white
        )),
         color: Colors.blueGrey,
         child: ListTile(
           title: Text(items[index]),
           leading: CircleAvatar(backgroundColor: Colors.green),
           subtitle: Wrap(
             children: [
              Container(height: 10),
               Text(price[index]),
               //Text("Hello World")

             ],
           ),
           trailing: Wrap(children: [
             IconButton(onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("you have add this to cart"),
                  backgroundColor:Colors.green,
                    //shape:OutlinedInputBorder(borderRadius:BorderRadius.circular(20))
                  )
                );

             }, icon: FaIcon(FontAwesomeIcons.cartShopping)),
             SizedBox(width: 20,),
             IconButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('you have liked this product'),
                backgroundColor: Colors.blue,
                shape:OutlineInputBorder(borderRadius: BorderRadius.circular(4),
                borderSide:BorderSide(color:Colors.white))
                )
              );
             }, icon: FaIcon(FontAwesomeIcons.heart))
           ],),

         ),
       );

     },itemCount: 10)
      

    );
  }
}

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: shopping_item(),
  ));
}