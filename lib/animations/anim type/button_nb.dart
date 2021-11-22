import 'package:flutter/material.dart';
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
import 'package:flutterwings/animations/buttonnb/buttonnb1.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb2.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb3.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb4.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb5.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb6.dart';
import 'package:flutterwings/animations/loopanimations/elivationanim.dart';
import 'package:flutterwings/animations/loopanimations/floatingiconanim.dart';
import 'package:flutterwings/animations/loopanimations/glowicon.dart';
import 'package:flutterwings/animations/loopanimations/rippleanim.dart';
import 'package:flutterwings/animations/loopanimations/rippleanimbutton.dart';
import 'package:flutterwings/animations/loopanimations/spiningicon.dart';
import 'package:flutterwings/animations/loopanimations/tweenicon.dart';
import 'package:lottie/lottie.dart';
class buttonnb extends StatefulWidget {
  const buttonnb({Key? key}) : super(key: key);

  @override
  _buttonnbState createState() => _buttonnbState();
}

class _buttonnbState extends State<buttonnb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("Bottom Animation",style: TextStyle(color: Colors.white),)),
          ),
          backgroundColor: Colors.teal,shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Card(
                    elevation: 10,shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    child: Container(height: 180,width: double.infinity,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,),
                      child: Lottie.asset("assets/bttmnb.json"),

                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb1()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bottom Navigation Bar 1 ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb2()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bottom Navigation Bar 2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb3()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bottom Navigation Bar 3",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb4()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bottom Navigation Bar 4",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb5()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bottom Navigation Bar 5",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb6()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bottom Navigation Bar 6",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
