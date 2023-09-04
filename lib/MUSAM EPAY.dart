import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mausam_ui(),
  ));
}

class Mausam_ui extends StatelessWidget {
  const Mausam_ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome MAUSAM'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.qr_code_scanner)],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Stack(
              children: [
                Container(height: 250),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    child: SizedBox(
                      height: 180,
                      child: Card(
                        color: Colors.blue,
                        child: Row(
                          children: [
    

                            CircleAvatar(
                              backgroundImage:AssetImage('assets\images\contact.png'),
                            ),
                            
                                Text("shifna"),
                              
                          ],
                        ),
                      ),
                    )),
              ],
            )
          ]))
        ],
      ),
    );
  }
}