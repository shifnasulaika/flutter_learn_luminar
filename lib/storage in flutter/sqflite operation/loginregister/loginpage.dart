import 'package:flutter/material.dart';
import 'package:ngnfnf/storage%20in%20flutter/sqflite%20operation/loginregister/registerpage.dart';
void main(){
  runApp(MaterialApp(home: Loginn(),));
}

class Loginn extends StatefulWidget {
  const Loginn({super.key});

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  final uname=TextEditingController();
  final pwd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 60)),
            SizedBox(height: 100,width: 100),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                controller: uname,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your UserName",
                    labelText: "UserName",


                ),
              )
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  maxLength: 8,
                  controller: pwd,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Password",
                    labelText: "password",
                    suffixIcon: Icon(Icons.remove_red_eye),



                  ),
                )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),

                onPressed: (){}, child: Text("Login")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),

                onPressed: ()
            {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Register2()));
            }
              , child: Text("REGISTRATION"))



          ],
        ),
      ) ,

    );
  }
}