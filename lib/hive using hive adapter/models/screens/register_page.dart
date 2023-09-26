import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:ngnfnf/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:ngnfnf/hive%20using%20hive%20adapter/models/user_moder.dart';

import 'login_page.dart';


class RegistrationHive extends StatelessWidget {
  RegistrationHive({super.key});

  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              hintText: "Enter username",
              filled: true,
              fillColor: Colors.green[200],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              hintText: "Enter password",
              filled: true,
              fillColor: Colors.green[200],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () async {
              ///fetch al the users from data
              final userlist = await Hivedb.instance.getuser();
              validatesignup(context, userlist);
            },
            child: Text("Register"),
          ),
        ],
      ),
    );
  }

  void validatesignup(BuildContext context, List<User> userlist) async {
    final username = usercontroller.text.trim();
    final password = passcontroller.text.trim();
    bool userfound = false;
    final validateemail = EmailValidator.validate(username);
    if (username != "" && password != "") {
      if (validateemail == true) {
        await Future.forEach(userlist, (singleuser) {
          if (singleuser.email == username) {
            userfound = true;
          } else {
            userfound = false;
          }
        });
        if (userfound == true) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Already exist")));
        } else {
          final validatepassword = validatePassword(context, password);
          if (validatepassword == true) {
            final user = User(email: username, password: password);
            await Hivedb.instance.adduser(user);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>Login()));
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("regiter successfull")));
          }
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("enter valid email")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("field must be not empty")));
    }
  }

  validatePassword(BuildContext context, String password) {
    if (password.length < 6) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("invalid password")));
      return false;
    } else {
      return true;
    }
  }
}