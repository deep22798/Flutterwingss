import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
class placeholder extends StatefulWidget {
  const placeholder({Key? key}) : super(key: key);

  @override
  _placeholderState createState() => _placeholderState();
}

class _placeholderState extends State<placeholder> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/image.txt');
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
          child: Center(child: Text("placeholder",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage("assets/placeholder.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),

              SizedBox(height: 20,),
              Text("Placeholder class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("A iconanimation that draws a box that represents where other widgets will one day be added."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("This iconanimation is useful during development to indicate that the interface is not yet complete."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("By default, the placeholder is sized to fit its container. If the placeholder is in an unbounded space, it will size itself according to the given fallbackWidth and fallbackHeight."),)),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
