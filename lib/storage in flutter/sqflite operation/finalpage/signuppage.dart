import 'package:flutter/material.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/finalpage/homeui.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/finalpage/sqlhelper.dart';


void main() {
  runApp(MaterialApp(
    home: Sign_up(),
  ));
}

class Sign_up extends StatelessWidget {
  Sign_up({super.key});
  final uname = TextEditingController();
  final p1 = TextEditingController();
  final p2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 150),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Text("Create an account,its free"),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Email Id",
                    label: Text("username"),
              
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                    controller: uname,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: "Password",
                    label: Text("password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                    controller: p1,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: "Password",
                    label: Text("confirm password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                    controller: p2,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  String usname=uname.text;
                  String pass1=p1.text;
                  String pass2=p2.text;
                  if(pass1==pass2){

                    //register usr
                    register_user1();
                  }
                  else{
                    //pswrd mismtch
                  }
                  
                },
                child: Text("SIGN UP"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: Size(300, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
              SizedBox(height: 10),
              Text("do you have an account,login?")
            ],
          ),
        ),
      ),
    );
  }
  Future<void> register_user1() async {
    await SQLHelper.register_user(uname.text, p1.text);
    // refresh list each time
  }
}

