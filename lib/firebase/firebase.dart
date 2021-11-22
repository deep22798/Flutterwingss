import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutterwings/firebase/gmaillogin.dart';
import 'package:flutterwings/firebase/login.dart';
import 'package:flutterwings/firebase/otp/login.dart';
import 'package:flutterwings/firebase/signup.dart';
import 'package:webview_flutter/webview_flutter.dart';
class firebase extends StatefulWidget {
  const firebase({Key? key, required User user}) : super(key: key);

  @override
  _firebaseState createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  String data="";
  String dat="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/firebase.txt');
    setState(() {
      data=responseText;
    });
  }
  String t="";
  fetchFileta()async{
    String responseText;
    responseText =await rootBundle.loadString('text/step4.txt');
    setState(() {
      t=responseText;
    });
  }
  String d="";
  fetchFileata()async{
    String responseText;
    responseText =await rootBundle.loadString('text/step3.txt');
    setState(() {
      d=responseText;
    });
  }
  String dt="";
  fetchFileDta()async{
    String responseText;
    responseText =await rootBundle.loadString('text/step2.txt');
    setState(() {
      dt=responseText;
    });
  }
  String da="";
  fetchFileDa()async{
    String responseText;
    responseText =await rootBundle.loadString('text/creatfricode.txt');
    setState(() {
      da=responseText;
    });
  }
  fetchFileDat()async{
    String responseText;
    responseText =await rootBundle.loadString('text/firebase1.txt');
    setState(() {
      dat=responseText;
    });
  }
  @override
  void initState() {
    fetchFileta();
    fetchFileData();
    fetchFileata();
    fetchFileDat();
    fetchFileDa();
    fetchFileDta();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Firebase Tools"),
        )),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(children: [
                  Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("assets/fire.gif"),fit: BoxFit.fill)),),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Firebase",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      Text("Tools",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ],
                  ),SizedBox(width: 50,),
                ],),width: double.infinity,color: Colors.white,),
            ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: SelectableText(data,style: TextStyle(),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableText(dat,style: TextStyle(),),
              ),
              SizedBox(height: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 10,right: 10,left: 10),
                child: Wrap(runSpacing: 10,
                  children: [
                    InkWell(splashColor: Colors.teal,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>logotp()));

                      },
                      child: Card(elevation: 10,shadowColor: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 110,width: 110,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white
                        ),
                          child: Column(children: [
                            Container(height: 80,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/otpp.gif"))),),
                            Text("Firebase OTP")
                          ],),
                        ),
                      ),
                    ),

                    SizedBox(width: 10,),
                    InkWell(splashColor: Colors.teal,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>sinupp()));

                      },
                      child: Card(elevation: 10,shadowColor: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 110,width: 110,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white
                        ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Container(height: 80,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/signupp.gif"))),),
                            Text("Firebase SignUp")
                          ],),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(splashColor: Colors.teal,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>loginn()));

                      },
                      child: Card(elevation: 10,shadowColor: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 110,width: 110,decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),color: Colors.white
                        ),
                          child: Column(children: [
                            Container(height: 80,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/loginn.gif"))),),
                            Text("Firebase SignIn")
                          ],),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(splashColor: Colors.teal,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>gmaillogin()));

                      },
                      child: Card(elevation: 10,shadowColor: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 110,width: 110,decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),color: Colors.white
                        ),
                          child: Column(children: [
                            Container(height: 80,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/googlee.gif"))),),
                            Text("Google Login")
                          ],),
                        ),
                      ),
                    ),

                    SizedBox(width: 10,),
                  ],
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(right: 8),
              //   child: InkWell(onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>fb()));
              //
              //   },splashColor: Colors.teal,
              //     child: Card(
              //         elevation: 10,shadowColor: Colors.teal,
              //         child: Container(height: 50,width: 220,decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),color: Colors.white
              //         ),
              //         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Container(height: 50,width: 50,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/fbb.gif"))),
              //
              //           ),
              //           Text("Facebook Login",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              //           Icon(Icons.arrow_forward_ios)
              //         ],),
              //         )
              //     ),
              //   ),
              // ),
              SizedBox(height: 20,),
              Container(height: 120,
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Container(decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(10)),
                      height: 120,width: 105,
                    child:Column(
                      children: [
                        Image.asset("name")
                      ],                      
                    )
                    ),SizedBox(width: 5,),
                     ],),
                )
                ,width: double.infinity,color: Colors.white,),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Add Firebase to your Flutter app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text("• Install your preferred"),SizedBox(width: 5,),
                        InkWell(onTap: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>editororidecodde()));
                        },
                            child: Text("editor or IDE.",style: TextStyle(color: Colors.teal),)),
                      ],
                    )),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Make sure your app meets the following requirements:")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Targets API level 16 (Jelly Bean) or later")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Uses Gradle 4.1 or later")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Set up a device or emulator for running your app. \nEmulators must use an emulator image with Google Play.")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Install Flutter for your specific operating system, including the following:")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Flutter SDK")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Supporting libraries")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Platform-specific software and SDKs")),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Row(
                      children: [Text("•"),SizedBox(width: 5,),
                        InkWell(onTap: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>signfirecode()));
                        },
                            child: Text("Sign into Firebase",style: TextStyle(color: Colors.teal),)),SizedBox(width: 5,),
                        Text("using your Google account."),SizedBox(width: 5,),SizedBox(width: 5,),
                      ],
                    )),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Step 1: Create a Firebase project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Row(
                      children: [Text("•"),SizedBox(width: 5,),
                  Icon(Icons.add_box_sharp)
                  ,SizedBox(width: 5,),
                        InkWell(onTap: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>signfirecode()));
                        },
                            child: Text("Create a Firebase project",style: TextStyle(color: Colors.teal),)),SizedBox(width: 5,),
                       ],
                    )),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: SelectableText(da,style: TextStyle(),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Step 2: Register app with Firebase",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: SelectableText(dt,style: TextStyle(),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Step 3: Add Firebase configuration file",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: SelectableText(d,style: TextStyle(),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("• Step 4: Add FlutterFire plugins",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: SelectableText(t,style: TextStyle(),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(alignment: Alignment.topLeft,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: ()async{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>iossscode()));
                            },
                            child: Text("• IOS        ",style: TextStyle(color: Colors.teal),)),SizedBox(height: 10,),
                        InkWell(
                            onTap: ()async{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>androocoide()));
                            },
                            child: Text("• Android",style: TextStyle(color:Colors.teal),)),
                      ],
                    )),
              ),
              SizedBox(height: 50,),


            ],
          ),
        ),
      ),

    );
  }
}




class editororidecodde extends StatefulWidget {
  const editororidecodde({Key? key}) : super(key: key);


  @override
  _editororidecoddeState createState() => _editororidecoddeState();
}
class _editororidecoddeState extends State<editororidecodde> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Editor or IDE"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://flutter.dev/docs/get-started/editor/",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(backgroundColor: Colors.teal, color: Colors.white,),)
              : Stack(),
        ],
      ),
    );

  }
}




class signfirecode extends StatefulWidget {
  const signfirecode({Key? key}) : super(key: key);


  @override
  _signfirecodeState createState() => _signfirecodeState();
}
class _signfirecodeState extends State<signfirecode> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Firebase SignIn"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://console.firebase.google.com/",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(backgroundColor: Colors.teal, color: Colors.white,),)
              : Stack(),
        ],
      ),
    );

  }
}





class iossscode extends StatefulWidget {
  const iossscode({Key? key}) : super(key: key);


  @override
  _iossscodeState createState() => _iossscodeState();
}
class _iossscodeState extends State<iossscode> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("IOS"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://firebase.google.com/docs/analytics/get-started?platform=ios/",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(backgroundColor: Colors.teal, color: Colors.white,),)
              : Stack(),
        ],
      ),
    );

  }
}




class androocoide extends StatefulWidget {
  const androocoide({Key? key}) : super(key: key);


  @override
  _androocoideState createState() => _androocoideState();
}
class _androocoideState extends State<androocoide> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Flutter SDk"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://firebase.google.com/docs/analytics/get-started?platform=android",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(backgroundColor: Colors.teal, color: Colors.white,),)
              : Stack(),
        ],
      ),
    );

  }
}



