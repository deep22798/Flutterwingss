import 'package:flutter/material.dart';
import 'package:flutterwings/Basics/basic.dart';
import 'package:flutterwings/Widgets/basic/Placeholder.dart';
import 'package:flutterwings/Widgets/basic/appbar.dart';
import 'package:flutterwings/Widgets/basic/buttons.dart';
import 'package:flutterwings/Widgets/basic/column.dart';
import 'package:flutterwings/Widgets/basic/container.dart';
import 'package:flutterwings/Widgets/basic/flutterlogo.dart';
import 'package:flutterwings/Widgets/basic/icons.dart';
import 'package:flutterwings/Widgets/basic/image.dart';
import 'package:flutterwings/Widgets/basic/row.dart';
import 'package:flutterwings/Widgets/basic/scaffold.dart';
import 'package:flutterwings/Widgets/basic/text.dart';
import 'package:flutterwings/introduction/introduction.dart';
import 'package:url_launcher/url_launcher.dart';
class basicwidgets extends StatefulWidget {
  const basicwidgets({Key? key}) : super(key: key);

  @override
  _basicwidgetsState createState() => _basicwidgetsState();
}

class _basicwidgetsState extends State<basicwidgets> {
  openurl()async{
    if(await canLaunch("https://www.flutter.dev/")){
      await launch("https://www.flutter.dev/");
    }
    else{
      throw "could not launch url";
    }

  } openul()async{
    if(await canLaunch("https://www.dart.dev/")){
      await launch("https://www.dart.dev/");
    }
    else{
      throw "could not launch url";
    }

  } openl()async{
    if(await canLaunch("https://www.flutter.dev/showcase")){
      await launch("https://www.flutter.dev/showcase");
    }
    else{
      throw "could not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    String url="https://flutter.dev/";
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.transparent,backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Basic Widgets",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(color: Colors.teal,

                    image: DecorationImage(image: AssetImage("assets/wid.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 150,width: 150,
                ),),
              Wrap(runSpacing: 2,spacing: 2,
                children: [
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>scaffold()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/scaffold.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Scaffold",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal.shade100),
                          color: Colors.white),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/appbar.gif"))),
                            ),
                            Text("AppBar",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>appbar()));
                    },
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>column()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,
                        decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.teal.shade100),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/column.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Column",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>row()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,
                        decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.teal.shade100),),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/row.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Row",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>container()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/container.gif"))),
                            ),
                            Text("Container",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>text()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/text.gif"))),
                            ),
                            Text("Text",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>buttons()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/button.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Buttons",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>flutterlogo()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/flutter.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Flutter Logo",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>icons()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/icons.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Icons",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>image()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/image.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Image",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.teal,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>placeholder()));
                    },
                    child: Card(elevation: 5,shadowColor: Colors.teal,
                      child: Container(height: 130,width: 105,decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal.shade100),
                        color: Colors.white,),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/placeholder.gif"),fit: BoxFit.fill)),
                            ),
                            Text("Placeholder",style: TextStyle(fontWeight: FontWeight.bold),)
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
