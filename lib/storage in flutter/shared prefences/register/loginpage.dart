import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}


class _loginState extends State<login> {
 final usname = TextEditingController();
 final pass = TextEditingController();
 late SharedPreferences preferences;

 @override
  void initState() {
   fetchdata();
    super.initState();
  }

  void fetchdata () async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('name')!;

    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: 
        const EdgeInsets.all(15),
        child:Column(
          children: [
            TextField(
              controller: usname,
              decoration: InputDecoration(
                label:Text("username"),
                hintText: 'username',
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                label:Text("password"),
                hintText: 'password',
              ),
            ),

            ElevatedButton(onPressed: () async{
              preferences  = await SharedPreferences.getInstance();
              String uname = usname.text;
              String conpass = pass.text;
              if(uname == username && pass == conpass){
                Navigator.push(context,MaterialPageRoute(builder: (context) => homepage()));
              }
              else{

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter a valid information")));

              }
            }, child: Text("LogIn"))
          ],
        )
      )
    );
  }
}