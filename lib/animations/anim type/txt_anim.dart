import 'package:flutter/material.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%201.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%204.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%205.dart';
import 'package:flutterwings/animations/backgroundanim/Background%20Animation%206.dart';
import 'package:flutterwings/animations/textanim/animating%20text.dart';
import 'package:flutterwings/animations/textanim/bouncing%20text%20animation.dart';
import 'package:flutterwings/animations/textanim/fade%20and%20scale%20animation.dart';
import 'package:flutterwings/animations/textanim/fade%20text%20animation.dart';
import 'package:flutterwings/animations/textanim/text%20animation.dart';
import 'package:flutterwings/animations/textanim/text%20scroll%20animation.dart';
import 'package:flutterwings/animations/textanim/wavy%20text%20animation.dart';
class txtanim extends StatefulWidget {
  const txtanim({Key? key}) : super(key: key);

  @override
  _txtanimState createState() => _txtanimState();
}

class _txtanimState extends State<txtanim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("Text Animation",style: TextStyle(color: Colors.white),)),
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
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/txtanim.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatingtext()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animating Text",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>wavytext()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Wavy Text Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>textscrollanim()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Text Scroll Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>fadetextanim()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fade Text Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>fadeandscaletextanim()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fade & Scale Text Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>textanimm()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Text Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bouncingtext()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bouncing Text Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),

                  SizedBox(height: 150,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
