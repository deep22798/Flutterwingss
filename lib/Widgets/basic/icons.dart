import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
class icons extends StatefulWidget {
  const icons({Key? key}) : super(key: key);

  @override
  _iconsState createState() => _iconsState();
}

class _iconsState extends State<icons> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/icon.txt');
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
          child: Center(child: Text("icons",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage("assets/icons.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),
              SizedBox(height: 20,),
              Text("Icon class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("A graphical icon iconanimation drawn with a glyph from a font described in an IconData such as material's predefined IconDatas in Icons."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Icons are not interactive. For an interactive icon, consider material's IconButton."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("There must be an ambient Directionality iconanimation when using Icon. Typically this is introduced automatically by the WidgetsApp or MaterialApp."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("This iconanimation assumes that the rendered icon is squared. Non-squared icons may render incorrectly."),)),
              SizedBox(height: 10,),
              Card(elevation: 5,
                child: Container(
                  height: 200,width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/iconwid.png")),
                      color: Colors.white
                  ),
                ),
              ),
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
