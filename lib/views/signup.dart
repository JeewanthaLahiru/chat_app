import 'package:chat_app/views/signin.dart';
import 'package:chat_app/views/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height/20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: size.width/1.1,
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_back_ios)
            ),
          ),
          SizedBox(
            height: size.height/50,
          ),
          Container(
            width: size.width/1.3,
            child: Text("Welcome", style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            width: size.width/1.3,
            child: Text("Sign up to continue", style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
                fontWeight: FontWeight.w500
            ),),
          ),
          SizedBox(
            height: size.height/10,
          ),
          Container(
              width: size.width,
              alignment: Alignment.center,
              child: field(size, "Name", Icons.verified_user, _name)
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              width: size.width,
              alignment: Alignment.center,
              child: field(size, "Email", Icons.email, _email),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
              width: size.width,
              alignment: Alignment.center,
              child: field(size, "Password", Icons.password, _password),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: size.height/ 14,
              width: size.width/ 1.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue
              ),
              alignment: Alignment.center,
              child: Text(
                "Signup",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height/25,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignIn())),
            child: Text(
              "Already have an account? Log in here",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }

  Widget field(Size size, String hintText, IconData icon, TextEditingController cont){
    return Container(
      height: size.height/15,
      width: size.width/ 1.3,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
