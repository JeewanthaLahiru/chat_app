
import 'package:chat_app/views/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<User?> createAccount(String name, String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.createUserWithEmailAndPassword(
        email: email, password: password))
        .user;
    if(user != null){
      print("Account created Successfull");
      return user;
    }else{
      print("Account creation faild");
      return user;
    }
  }catch(e){
    print(e);
    return null;
  }
}

Future<User?> signIn(String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    if(user != null){
      print("Login Successfull");
      return user;
    }else{
      print("Login faild");
      return user;
    }
  }catch(e){
    print(e);
    return null;
  }
}

Future logOut(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    await _auth.signOut().then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => SignIn()));
    });
  }catch(e){
    print("error");
  }
}