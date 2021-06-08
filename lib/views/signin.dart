import 'package:chat_app/views/widget.dart';
import 'package:flutter/cupertino.dart';
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
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            SizedBox(height: 12.0,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blue,
              ),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text("Sign in",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 12.0,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black,
              ),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text("Sign in with Google",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 18.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                Text("Register now" , style: TextStyle(
                  decoration: TextDecoration.underline,
                ),),
              ],
            ),
            SizedBox(height: 70.0,)
          ],
        ),
      ),
    );
  }
}
