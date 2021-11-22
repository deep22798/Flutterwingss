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
import 'package:flutterwings/animations/list&gridviewanim/animatedgridview1.dart';
import 'package:flutterwings/animations/list&gridviewanim/animatedgridview2.dart';
import 'package:flutterwings/animations/list&gridviewanim/animatedlistview1.dart';
import 'package:flutterwings/animations/list&gridviewanim/animatedlistview2.dart';
import 'package:flutterwings/animations/list&gridviewanim/animatedlistview3.dart';
import 'package:flutterwings/animations/list&gridviewanim/animatedlistview4.dart';
import 'package:flutterwings/animations/loopanimations/elivationanim.dart';
import 'package:flutterwings/animations/loopanimations/floatingiconanim.dart';
import 'package:flutterwings/animations/loopanimations/glowicon.dart';
import 'package:flutterwings/animations/loopanimations/rippleanim.dart';
import 'package:flutterwings/animations/loopanimations/rippleanimbutton.dart';
import 'package:flutterwings/animations/loopanimations/spiningicon.dart';
import 'package:flutterwings/animations/loopanimations/tweenicon.dart';
class listngrid extends StatefulWidget {
  const listngrid({Key? key}) : super(key: key);

  @override
  _listngridState createState() => _listngridState();
}

class _listngridState extends State<listngrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("List & Grid",style: TextStyle(color: Colors.white),)),
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
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/listngrid.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedlistview1()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Listview 1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedlistview2()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Listview 2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedlistview3()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Listview 3",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedlistview4()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Listview 4",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedgridview1()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Gridview 1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedgridview2()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Gridview 2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  SizedBox(height: 50,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
