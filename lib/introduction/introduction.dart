import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class introduction extends StatefulWidget {
  const introduction({Key? key}) : super(key: key);

  @override
  _introductionState createState() => _introductionState();
}

class _introductionState extends State<introduction> {

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
          child: Center(child: Text("Introduction",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(color: Colors.teal,

                    image: DecorationImage(image: AssetImage("assets/intro.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 150,width: 150,
                ),),
              SizedBox(height: 30,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("What is flutter?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text("Flutter is a Google’s UI Toolkit for building cross platform apps. you can make Android, iOS, Windows, Desktop, web apps using flutter with single code base.",),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Row(
                    children: [

                      Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                      MaterialButton(onPressed: ()async{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>fluttinro()));
                      },
                      child: Text("https://flutter.dev/",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),

                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Which language is used on flutter?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("Flutter uses programming language called “Dart“.",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Row(
                    children: [

                      Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                      MaterialButton(onPressed: ()async{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dartintro()));
                      },
                          child: Text("https://dart.dev/",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Who uses Flutter?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("Big companies are started adopting flutter for their business. You can check",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Row(
                    children: [

                      Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                      MaterialButton(onPressed: ()async{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>showintro()));
                      },
                          child: Text("https://flutter.dev/showcase",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                    ],
                  ),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Why Flutter is Best ? (My Top 5 Reasons)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("* Cross Platform:",style:TextStyle(fontWeight: FontWeight.bold) ,),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("If you want to build a mobile app for android, you need to learn Java/Kotlin. If you want to build iOS App, you need to learn Swift. If you want to build web app, you need to learn HTML, CSS, JS..etc. but using flutter, you can build all apps with single codebase.",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("* Easy to learn: ",style:TextStyle(fontWeight: FontWeight.bold) ,),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("If you’re just started learning mobile development, flutter is a best framework to start. If you’re taking any other framework, you might need other programming knowledge (eg. React Native required React Concept, Ionic requires Web Technology Skills)",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("* Performance:",style:TextStyle(fontWeight: FontWeight.bold) ,),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("Comparing to other framework, flutter is much faster",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("* Hot Reload:",style:TextStyle(fontWeight: FontWeight.bold) ,),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("Flutter comes with a facility called hot-reload, where you can save changes & See the result immediately on screen (no need to rebuild app & run) which saves huge development time",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("* Community Support:",style:TextStyle(fontWeight: FontWeight.bold) ,),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("Flutter is growing very fast & there are lot of people to help incase if you’re struggling.",),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class fluttinro extends StatefulWidget {
  const fluttinro({Key? key}) : super(key: key);


  @override
  _fluttinroState createState() => _fluttinroState();
}
class _fluttinroState extends State<fluttinro> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Flutter"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://flutter.dev/",
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






class dartintro extends StatefulWidget {
  const dartintro({Key? key}) : super(key: key);


  @override
  _dartintroState createState() => _dartintroState();
}
class _dartintroState extends State<dartintro> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Dart"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://dart.dev/",
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







class showintro extends StatefulWidget {
  const showintro({Key? key}) : super(key: key);


  @override
  _showintroState createState() => _showintroState();
}
class _showintroState extends State<showintro> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Flutter ShowCase"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://flutter.dev/showcase",
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
