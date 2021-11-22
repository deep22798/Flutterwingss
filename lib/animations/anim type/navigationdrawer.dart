import 'package:flutter/material.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb1.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb2.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb3.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb4.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb5.dart';
import 'package:flutterwings/animations/buttonnb/buttonnb6.dart';
import 'package:flutterwings/animations/navigationdrawer/customnd.dart';
class navigationdrawer extends StatefulWidget {
  const navigationdrawer({Key? key}) : super(key: key);

  @override
  _navigationdrawerState createState() => _navigationdrawerState();
}

class _navigationdrawerState extends State<navigationdrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("Navigation Drawer",style: TextStyle(color: Colors.white),)),
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
                        color:Colors.white,image: DecorationImage(image: AssetImage("assets/buttonnb.gif"))),),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>customnavigationdrawer()));
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black26,border: Border.all(color: Colors.teal)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Custom Navigation Bar ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.fast_forward,size: 35,color: Colors.white,)
                          ],),
                      ),
                    ),
                  ),

                  SizedBox(height: 500,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
