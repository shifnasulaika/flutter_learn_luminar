import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngnfnf/passing%20data%20between%20screance/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    home: login(),
  ));
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final usname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;
  String? username, password;
  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  void fetchdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('username');
      password = preferences.getString('password');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  controller: usname,
                  decoration: const InputDecoration(
                    label: Text("username"),
                    hintText: 'username',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: pass,
                  decoration: const InputDecoration(
                    label: Text("password"),
                    hintText: 'password',
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      preferences = await SharedPreferences.getInstance();
                      String uname = usname.text;
                      String conpass = pass.text;
                      if (uname == username && pass == password) {
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductHome()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("Enter a valid information")));
                      }
                    },
                    child: Text("LogIn"))
              ],
            )));
  }
}
