import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
class flutterlogo extends StatefulWidget {
  const flutterlogo({Key? key}) : super(key: key);

  @override
  _flutterlogoState createState() => _flutterlogoState();
}

class _flutterlogoState extends State<flutterlogo> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/flutterlogo.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    // TODO: implement initState
    super.initState();
  }
  openurl()async{
    if(await canLaunch("https://flutter.dev/brand.")){
      await launch("https://flutter.dev/brand.");
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
          child: Center(child: Text("flutterlogo",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage("assets/flutter.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),
              SizedBox(height: 20,),
              Text("Flutter logo class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("The Flutter logo, in iconanimation form. This iconanimation respects the IconTheme. For guidelines on using the Flutter logo,"),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text("Visit :  "),
                        InkWell(onTap: (){
                          openurl();
                        },
                            child: Text("https://flutter.dev/brand",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.teal) ,)),
                      ],
                    ),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("See also:",style: TextStyle(fontWeight: FontWeight.bold),),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("IconTheme, which provides ambient configuration for icons.\n\nIcon, for showing icons the Material design icon library.\n\nImageIcon, for showing icons from AssetImages or other ImageProviders."),)),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Source Codes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  )),
              SizedBox(height: 20,),
              SelectableText(data)


            ],
          ),
        ),
      ),
    );
  }
}
