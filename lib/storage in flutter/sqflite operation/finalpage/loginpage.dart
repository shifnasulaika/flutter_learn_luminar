import 'package:flutter/material.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/finalpage/homeui.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/finalpage/sqlhelper.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final uname = TextEditingController();
  final p1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 150),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text("LOGIN",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 40),
            TextField(
              controller:uname,
              decoration: InputDecoration(
                hintText: "username",
                label: Text("Emailid"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: p1,
              decoration: InputDecoration(
                hintText: "Password",
                label: Text("password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(

              onPressed: () {
                final Lcheck= LoginCheck();
                if(Lcheck==true){
                  Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Homeui())));
                  
                }
                else{
                  //incorct pass
                }
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: Size(300, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),
            ),
          ],
        ),
      ),
    ));
  }

  Future<bool> LoginCheck() async {
    return await SQLHelper.login_check(uname.text,p1.text);
  }
}
