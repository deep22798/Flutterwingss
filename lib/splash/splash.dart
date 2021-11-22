import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterwings/homescreen.dart';
import 'package:new_version/new_version.dart';
class splash extends StatefulWidget {

  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  // basicStatusCheck(NewVersion newVersion) {
  //   newVersion.showAlertIfNecessary();
  // }
  // advancedStatusCheck(NewVersion newVersion) async {
  //   final status = await newVersion.getVersionStatus();
  //   if (status != null) {
  //     debugPrint(status.appStoreLink);
  //     debugPrint(status.localVersion);
  //     debugPrint(status.storeVersion);
  //     debugPrint(status.canUpdate.toString());
  //     newVersion.showUpdateDialog(status);
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(image:
      DecorationImage(
        image: AssetImage("assets/splash.png"),fit: BoxFit.cover
      )),
        child:Stack(children: [
            Align(alignment: Alignment.center,
            child: Container(decoration: BoxDecoration(
            //     boxShadow: [
            //   BoxShadow(
            //     color: Colors.white,blurRadius: 5
            //   )
            // ],
                image: DecorationImage(image: AssetImage("assets/splashlogo.png")),
                borderRadius: BorderRadius.all(Radius.circular(15))),
              height: 250,width: 250,
            ),),
            Padding(
              padding: const EdgeInsets.only(top: 150,),
              child: Align(alignment: Alignment.center,
                child: Text("FlutterWings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 182,),
            child: Align(alignment: Alignment.center,
              child: Text("A complete Flutter Solution",style: TextStyle(fontSize: 9.5,),),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Align(alignment: Alignment.bottomCenter,child:
                Text("from"),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(alignment: Alignment.bottomCenter,child:
              Text("WinTechWings",style: TextStyle(fontSize: 15,),),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Align(alignment: Alignment.bottomCenter,child:

              CircularProgressIndicator(backgroundColor: Colors.teal,color: Colors.white,),),
            )
          ],) ,

        ),
    );
  }


  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),
            () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  homescreen()
              ));
        }
    );
    // final newVersion = NewVersion(
    //   androidId: 'com.wintechwings.flutterwings',
    // );
    //
    // // You can let the plugin handle fetching the status and showing a dialog,
    // // or you can fetch the status and display your own dialog, or no dialog.
    // const simpleBehavior = true;
    //
    // if (simpleBehavior) {
    //   basicStatusCheck(newVersion);
    // } else {
    //   advancedStatusCheck(newVersion);
    // }

  }
}
