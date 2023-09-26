

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ngnfnf/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:ngnfnf/hive%20using%20hive%20adapter/models/screens/home.dart';

import 'package:ngnfnf/hive%20using%20hive%20adapter/models/user_moder.dart';
import 'package:hive_flutter/adapters.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //Hive.registerAdapter();
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: Login(),));

}
class Login extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HiveLogin"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'UserName',
              border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                  hintText: 'PassWord'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                final users=await Hivedb.instance .getUser();
                chechUserExist(context, users);


              },
              child: const Text("Login")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>RegistrationHive()));
              },
              child: const Text("Not a User? Register Here!!!"))
        ],
      ),
    );
  }

void chechUserExist(BuildContext context,List<User>users)async{
  final lemail= email.text.trim();
  final lpass=pass.text.trim();
  bool userFound=false;
  if(lemail !="" && lpass !=""){
    await Future.forEach(users,(singleUser){

    if(lemail == singleUser.email && lpass==singleUser.password){
      userFound=true;

    }else{
      userFound=false;
    }

    });
    if(userFound==true){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HiveHome()));

    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text("login faild user not found")));

    }

  }else{
     ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text("firld must not be empty")));

  }
}
}