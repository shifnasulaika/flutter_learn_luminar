import 'package:flutter/material.dart';
import 'package:ngnfnf/storage%20in%20flutter/shared%20prefences/simple%20login%20using%20shared/shared-home.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: loginShared(),));
}

class loginShared extends StatefulWidget {
  const loginShared({super.key});

  @override
  State<loginShared> createState() => _loginSharedState();
}

class _loginSharedState extends State<loginShared> {
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;
  @override
  void initState(){
    check_if_user_already_login();
    super.initState();
  }
void check_if_user_already_login() async{
  preferences = await SharedPreferences.getInstance();
  newuser=preferences.getBool('userlogin')??true;
   
   if(newuser==false){
    Navigator.push((context),MaterialPageRoute(builder: (context) => SharedHome()));
   }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),

      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email'
              ),
              controller: email,

            ),),
            Padding(padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password'
              ),
              controller: pwd,
            ),
            ),
            ElevatedButton(onPressed: ()async{
              preferences=await SharedPreferences.getInstance();
              String username=email.text;
              String password =pwd.text;
              if(
                username !=""&& password  !=""
              ){
              preferences.setString('Uname',username);
              preferences.setString('pword',password);
              preferences.setBool('userlogin', false);
              Navigator.push(context,MaterialPageRoute(builder: (context)=> SharedHome()));}
              email.text="";
              pwd.text="";
            }, child: const Text("Login"))



          ],
        ),
      ),
    );
  }
}

