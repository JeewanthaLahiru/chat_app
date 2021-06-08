import 'package:flutter/material.dart';

AppBar appBarMain(BuildContext context){
  return AppBar(
    title: Text("ChatMe"),
    actions: [
      IconButton(onPressed: (){},
          icon: Icon(Icons.search)
      ),
      IconButton(
        onPressed: (){},
        icon: Icon(Icons.more_vert),
      )
    ],
  );
}