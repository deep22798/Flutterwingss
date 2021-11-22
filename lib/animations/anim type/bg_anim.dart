import 'package:flutter/material.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%201.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%204.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%205.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%206.dart';
import 'package:flutterwings/animations/buttonanim/animatedbutton.dart';
import 'package:flutterwings/animations/buttonanim/animatedbuttons.dart';
import 'package:flutterwings/animations/buttonanim/circularfabbutton.dart';
import 'package:flutterwings/animations/buttonanim/draggablebutton.dart';
import 'package:flutterwings/animations/buttonanim/foldablebutton.dart';
import 'package:flutterwings/animations/buttonanim/progressbutton1.dart';
import 'package:flutterwings/animations/buttonanim/progressbutton2.dart';
import 'package:flutterwings/animations/buttonanim/responsivebutton.dart';
import 'package:flutterwings/animations/buttonanim/rippleanimationbutton.dart';
import 'package:flutterwings/animations/buttonanim/roundedloadingbutton.dart';
import 'package:flutterwings/animations/buttonanim/simplebutton.dart';
import 'package:flutterwings/animations/buttonanim/sliderbutton.dart';
import 'package:flutterwings/animations/loopanimations/elivationanim.dart';
import 'package:flutterwings/animations/loopanimations/floatingiconanim.dart';
import 'package:flutterwings/animations/loopanimations/glowicon.dart';
import 'package:flutterwings/animations/loopanimations/rippleanim.dart';
import 'package:flutterwings/animations/loopanimations/rippleanimbutton.dart';
import 'package:flutterwings/animations/loopanimations/spiningicon.dart';
import 'package:flutterwings/animations/loopanimations/tweenicon.dart';
class bganim extends StatefulWidget {
  const bganim({Key? key}) : super(key: key);

  @override
  _bganimState createState() => _bganimState();
}

class _bganimState extends State<bganim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("Background Animation",style: TextStyle(color: Colors.white),)),
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
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/bganim.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bganim1()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Background Animation 1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),

                  // SizedBox(height: 20,),
                  // InkWell(onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>bganim4()));
                  // },
                  //   child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 20,right: 20),
                  //       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Background Animation 2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  //           Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                  //         ],),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20,),
                  // InkWell(
                  //   onTap: (){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>bganim5()));
                  //   },
                  //
                  //   child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 20,right: 20),
                  //       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Background Animation 3",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  //           Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                  //         ],),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20,),
                  // InkWell(
                  //   onTap: (){
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>bganim6()));
                  //   },
                  //
                  //   child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 20,right: 20),
                  //       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Background Animation 4",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  //           Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                  //         ],),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(height: 150,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
