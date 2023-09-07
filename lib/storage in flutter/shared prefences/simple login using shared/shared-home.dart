import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
   String? username;
  @override
  void initState(){
    fetchData();
    super.initState();

  }
  void fetchData() async{
    preferences=await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString('Uname')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("WElCOME $username"),
      const SizedBox(height:10,),
      ElevatedButton(onPressed: (){
        preferences.setBool('newuser', true);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>SharedHome())
        );
      }, child: Text("LOGOUT"))],) 
    ),
    );

  }
}