import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  _imageState createState() => _imageState();
}

class _imageState extends State<image> {

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
          child: Center(child: Text("image",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage("assets/image.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),

              SizedBox(height: 20,),
              Text("Image class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Several constructors are provided for the various ways that an image can be specified:"),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("new Image, for obtaining an image from an ImageProvider.\n\nnew Image.asset, for obtaining an image from an AssetBundle using a key.\n\nnew Image.network, for obtaining an image from a URL.\nnew Image.file, for obtaining an image from a File.\n\nnew Image.memory, for obtaining an image from a Uint8List."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("The following image formats are supported: JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP. Additional formats may be supported by the underlying platform. Flutter will attempt to call platform API to decode unrecognized formats, and if the platform API supports decoding the image Flutter will be able to render it."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("To automatically perform pixel-density-aware asset resolution, specify the image using an AssetImage and make sure that a MaterialApp, WidgetsApp, or MediaQuery iconanimation exists above the Image iconanimation in the iconanimation tree."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("The image is painted using paintImage, which describes the meanings of the various fields on this class in more detail."),)),
              SizedBox(height: 10,),



              Card(elevation: 5,
                child: Container(
                  height: 200,width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/imagewid.jpg")),
                      color: Colors.white
                  ),
                ),
              ),
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
