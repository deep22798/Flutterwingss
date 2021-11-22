import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%201.dart';
import 'package:flutterwings/animations/cpanim/bounce%20ripple%20animation.dart';
import 'package:flutterwings/animations/cpanim/circular%20loading%20button.dart';
import 'package:flutterwings/animations/cpanim/loading%20animation.dart';
import 'package:flutterwings/animations/cpanim/loading%20button.dart';
import 'package:flutterwings/animations/cpanim/spinner%20loading%20animation.dart';
import 'package:flutterwings/animations/cpanim/splash%20ripple%20effect.dart';

import 'package:flutterwings/animations/cpanim/waterflow.dart';
import 'package:flutterwings/animations/cpanim/wifi.dart';
import 'package:flutterwings/animations/uidesign/homepage/homepagedesign.dart';
import 'package:flutterwings/animations/uidesign/login/logindesign.dart';
class uidesigns extends StatefulWidget {
  const uidesigns({Key? key}) : super(key: key);

  @override
  _uidesignsState createState() => _uidesignsState();
}

class _uidesignsState extends State<uidesigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("UI Designs",style: TextStyle(color: Colors.white),)),
          ),
          backgroundColor: Colors.teal,shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      body: Center(
        child: Wrap(spacing: 20,direction: Axis.vertical,
          children: [
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>logindesigns()));
          },
            child: Card(shadowColor: Colors.teal,elevation: 5,
              child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill)),
                height: 160,width: 140,child: Center(child: Text("LoginPage\nDesigns",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),),
              ),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>homepagedesigns()));
          },
            child: Card(shadowColor: Colors.teal,elevation: 5,
              child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill)),
                height: 160,width: 140,child: Center(child: Text("HomePage\nDesigns",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white))),
              ),
            ),
          )
        ],),
      ),

    );
  }
}
