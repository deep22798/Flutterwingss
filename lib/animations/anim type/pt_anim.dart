import 'package:flutter/material.dart';
import 'package:flutterwings/animations/loopanimations/elivationanim.dart';
import 'package:flutterwings/animations/loopanimations/floatingiconanim.dart';
import 'package:flutterwings/animations/loopanimations/glowicon.dart';
import 'package:flutterwings/animations/loopanimations/rippleanim.dart';
import 'package:flutterwings/animations/loopanimations/rippleanimbutton.dart';
import 'package:flutterwings/animations/loopanimations/spiningicon.dart';
import 'package:flutterwings/animations/loopanimations/tweenicon.dart';
import 'package:flutterwings/animations/ptanim/animatingtransition.dart';
import 'package:flutterwings/animations/ptanim/fadetransition.dart';
import 'package:flutterwings/animations/ptanim/opencontainer.dart';
import 'package:flutterwings/animations/ptanim/pagetransitionswitcher.dart';
import 'package:flutterwings/animations/ptanim/scaletransition.dart';
import 'package:flutterwings/animations/ptanim/sizetransition.dart';
import 'package:flutterwings/animations/ptanim/slidetransition.dart';
class ptanim extends StatefulWidget {
  const ptanim({Key? key}) : super(key: key);

  @override
  _ptanimState createState() => _ptanimState();
}

class _ptanimState extends State<ptanim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("Page Transition Animation",style: TextStyle(color: Colors.white),)),
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
                    child: Container(height: 200,width: double.infinity,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/ptanim.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>opencontainer()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Open Container",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>animatingtransition()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animating Transition",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fadetransition()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fade Transition",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>sizetransition()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Size Transition",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>scaletransition()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Scale Transition",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>slidetransition()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Slide Transition",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pagetransitionswicher()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Page Transition Switcher",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
