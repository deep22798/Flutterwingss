import 'package:flutter/material.dart';
import 'package:flutterwings/adhelper.dart';
import 'package:flutterwings/animations/iconanimation/animatedicon.dart';
import 'package:flutterwings/animations/iconanimation/animatingicon.dart';
import 'package:flutterwings/animations/iconanimation/chanim.dart';
import 'package:flutterwings/animations/iconanimation/heartbeat.dart';
import 'package:flutterwings/animations/iconanimation/responsiveicon.dart';

class iconanim extends StatefulWidget {
  const iconanim({Key? key}) : super(key: key);

  @override
  _iconanimState createState() => _iconanimState();
}

class _iconanimState extends State<iconanim> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Icon Animation",style: TextStyle(color: Colors.white),)),
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
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/iconanim.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>heartbeat()));
                      },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("HeartBeat Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                        ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedicon()));
                  },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animated Icons",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  // SizedBox(height: 20,),
                  // InkWell(onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>responsiveicon()));
                  // },
                  //   child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 20,right: 20),
                  //       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Responsive Icon",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  //           Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                  //         ],),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>animatingicon()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Animating Icon",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>chanim()));
                    },

                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Controlable Heartbeat Animation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                              Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                            ],),
                        ),
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
