import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackex(),));
}
class Stackex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 450,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const  DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1608311397926-af25e955eb4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fGJsYWNrJTIwYW5kJTIwd2hpdGUlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60'))
              ),
            ),
            Positioned(
              bottom: 10,left: 50,
              child: Container(
                height: 40,
                width: 170,
                child: const  Text('SHIFNA P',
                  style: TextStyle(fontSize: 17,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            Positioned(
              right: 25,top: 10,
              child: Container(
                height: 150,
                width: 50,
                child: const  Text('SBI',
                  style: TextStyle(fontSize: 32,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            Positioned(
              right: 15,top: 50,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "data:image/png;base64,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"
                    ),),
                ),
              ),
            ),
            Positioned(
              right: 80,top: 15,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "data:image/png;base64,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"
                        ),),
                ),
              ),
            ),
            Positioned(
              bottom: 10,left: 50,
              child: Container(
                height: 70,
                width: 300,
                child: const Text('VALID FROM 12/27       VALID THRU 12/25',
                  style: TextStyle(fontSize: 13,
                      color: Colors.white60,
                      ),),
              ),
            ),
            Positioned(
              bottom: 80,left: 60,
              child: Container(
                height: 50,
                width: 500,
                child: const Text('4237   2014   3456   4567',
                  style: TextStyle(fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ),
            ),
            Positioned(
              bottom: 10,left: 90,
              child: Container(
                height: 50,
                width: 600,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(40),
                 image: const DecorationImage(
                   image: NetworkImage(
                     "data:image/png;base64,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"
                   ),),
              ),
            ),
            ),
            Positioned(
              bottom: 150,left: 10,
              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const  DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj1wfqyQMbzW8-6AZYn0sxNf2Vdi5daCI6vA&usqp=CAU"
                    ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}