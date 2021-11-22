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
import 'package:flutterwings/animations/uidesign/login/animatedloginui.dart';
import 'package:flutterwings/animations/uidesign/login/loginuidesign.dart';
import 'package:flutterwings/animations/uidesign/login/loginuiwithfadeoutanimation.dart';
import 'package:flutterwings/animations/uidesign/login/translucentloginui.dart';
class logindesigns extends StatefulWidget {
  const logindesigns({Key? key}) : super(key: key);

  @override
  _logindesignsState createState() => _logindesignsState();
}

class _logindesignsState extends State<logindesigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("LoginPage Designs",style: TextStyle(color: Colors.white),)),
          ),
          backgroundColor: Colors.teal,shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Card(
                    elevation: 10,shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    child: Container(height: 200,width: double.infinity,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/logindesigns.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedloginui()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Login UI",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginuiwithfadeoutanimation()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: SingleChildScrollView(scrollDirection:Axis.horizontal ,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Login UI with fade-out Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                              Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                            ],),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginuidesign()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Login Ui Design",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>translucentloginui()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Translucent Login UI",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),SizedBox(height: 20,),


                  SizedBox(height: 50)
                ],
              ),
            ),
          ),
        )
    );
  }
}
