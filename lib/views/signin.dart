import 'package:chat_app/views/widget.dart';
import "package:flutter/material.dart";

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "email"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "password"
              ),
            ),
            SizedBox(height: 12.0,),
            Container(
              alignment: Alignment.centerRight,
              child: Text("Forget Password?"),
            ),
          ],
        ),
      ),
    );
  }
}
