import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class successgoole extends StatefulWidget {
  const successgoole({Key? key, required User user}) : super(key: key);

  @override
  _successgooleState createState() => _successgooleState();
}

class _successgooleState extends State<successgoole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Login"),),
      body: Center(
        child: Text("Successfuly Login"),
      ),
    );
  }
}
