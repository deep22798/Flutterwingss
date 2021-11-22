import 'package:flutter/material.dart';
import 'package:flutterwings/Widgets/basic/scaffold.dart';
import 'package:flutterwings/animations/anim%20type/bg_anim.dart';
import 'package:flutterwings/animations/anim%20type/button_anim.dart';
import 'package:flutterwings/animations/anim%20type/button_nb.dart';
import 'package:flutterwings/animations/anim%20type/cs_anim.dart';
import 'package:flutterwings/animations/anim%20type/icon_anim.dart';
import 'package:flutterwings/animations/anim%20type/lits&grid_anim.dart';
import 'package:flutterwings/animations/anim%20type/loop_anim.dart';
import 'package:flutterwings/animations/anim%20type/navigationdrawer.dart';
import 'package:flutterwings/animations/anim%20type/other_anim.dart';
import 'package:flutterwings/animations/anim%20type/pt_anim.dart';
import 'package:flutterwings/animations/anim%20type/splash_anim.dart';
import 'package:flutterwings/animations/anim%20type/txt_anim.dart';
import 'package:flutterwings/animations/anim%20type/uidesign.dart';

class animations extends StatefulWidget {
  const animations({Key? key}) : super(key: key);

  @override
  _animationsState createState() => _animationsState();
}

class _animationsState extends State<animations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.transparent,backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Flutter Animation",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(color: Colors.teal,

                    image: DecorationImage(image: AssetImage("assets/mainanim.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 150,width: 150,
                ),),
              Wrap(runSpacing: 2,spacing: 2,
                children: [
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>iconanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Icon",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>loopanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Loop",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ptanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Center(
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Text("Page",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),)),
                              Center(child: Text("Transition",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),)),
                              Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Button",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>listngrid()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("List",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                            Text("&",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                            Text("GridView",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bganim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Background",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>txtanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Text",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>splashanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Splash",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>cpanim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Custom ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 35),),
                            Text("Painter ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 35),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>uidesigns()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("UI",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Designs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonnb()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Bottom",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
                            Text("Navigation Bar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>navigationdrawer()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Navigation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                            Text("Drawer",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>otheranim()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 180,width: 160,decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fill),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Other",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 50),),
                            Text("Animation",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20),)
                          ],
                        ),
                      ),
                    ),
                  ),








                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
