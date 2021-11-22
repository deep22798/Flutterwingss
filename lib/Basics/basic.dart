import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
class basic extends StatefulWidget {
  const basic({Key? key}) : super(key: key);

  @override
  _basicState createState() => _basicState();
}
class _basicState extends State<basic> {
  ope()async{
    if(await canLaunch("https://developer.android.com/")){
    await launch("https://developer.android.com/");
    }
    else{
    throw "could not launch url";
    }
  }
op()async{
    if(await canLaunch("https://code.visualstudio.com/download/")){
    await launch("https://code.visualstudio.com/download/");
    }
    else{
    throw "could not launch url";
    }
  }
opr()async{
    if(await canLaunch("https://flutter.dev/docs/get-started/install/")){
    await launch("https://flutter.dev/docs/get-started/install/");
    }
    else{
    throw "could not launch url";
    }
  }
opn()async{
    if(await canLaunch("https://www.oracle.com/in/java/technologies/javase/javase-jdk8-downloads.html")){
    await launch("https://www.oracle.com/in/java/technologies/javase/javase-jdk8-downloads.html");
    }
    else{
    throw "could not launch url";
    }
  }
  opy()async{
    if(await canLaunch("https://www.youtube.com/watch?v=YPKYT1buIVU&t=430s")){
    await launch("https://www.youtube.com/watch?v=YPKYT1buIVU&t=430s");
    }
    else{
    throw "could not launch url";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.transparent,backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Basics",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/basic.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 150,width: 150,
                ),),
              SizedBox(height: 30,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Install Flutter on Windows",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("To install and run Flutter on the Windows system, you need first to meet these requirements for your development environment.",),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,),
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                        MaterialButton(onPressed: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>insfluttter()));
                        },
                            child: Text("https://www.youtube.com/watch?v=YPKYT1buIVU&t=430s",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("1. Requirements",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),

              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* Operating System",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Windows 7 or Later (I am Windows 10. You can also use Mac or Linux OS.).",),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* Disk Space",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("400 MB (It does not include disk space for IDE/tools).",),
                ),
              ),
              SizedBox(height: 30,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* Tools",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("1. Windows PowerShell\n2. Git for Windows 2.x (Here, Use Git from Windows Command Prompt option).).",),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* Tools",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("1. Windows PowerShell\n2. Git for Windows 2.x (Here, Use Git from Windows Command Prompt option).).",),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* SDK",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Flutter SDK for Windows",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* IDE",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Android Studio (Official)",),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("2. Download Android Studio or Vs Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("* Android Studio (Official)",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,),
                  child: Row(
                    children: [

                      Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                      MaterialButton(onPressed: ()async{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>androistudiod()));
                      },
                          child: Text("https://developer.android.com/",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("* VSCode",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,),
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                        MaterialButton(onPressed: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>vscodee()));
                        },
                            child: Text("https://code.visualstudio.com/download/",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("* Note:",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("After complete the android studio download, you can download Flutter and dart plugin by these steps:",),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Open Android Studio > File > Settings > Plugins\n (search Flutter and dart one by one and install)",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("3. Download Flutter Sdk ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,),
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                        MaterialButton(onPressed: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sdkfl()));
                        },
                            child: Text("https://flutter.dev/docs/get-started/install",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("* Note:",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("After complete the Flutter SDK download, you can set the flutter Sdk Path:",),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Open Android Studio > File > Settings > Language & Framwork > Flutter > Flutter Sdk Path\n (Choose Your Sdk Path Location).",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("4. Download Java 8 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Text("Link:",style: TextStyle(fontWeight: FontWeight.w500,),),
                        MaterialButton(onPressed: ()async{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>javaora()));
                        },
                            child: Text("https://www.oracle.com/in/java/technologies/javase/javase-jdk8-downloads.html",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.teal),)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("5. Setup Environment Variables ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("1. Open windows and search Environment Variables > Environment Variable > Creat new variable(JAVA_HOME) and set its Value (java installation path)."),
                ),
              ),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("1. Set Path Go to path option in variables and set path (java installation path/bin.))",),
                ),
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Now, You are done Installation Process. ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 10,),
              Divider(height: 1,color: Colors.teal,),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Important Commands to remember",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter create project_name : Helps you to create new project.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter devices : Helps you to detect all connected devices.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter run : Helps you to run app on your device / emulator.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter run -d all : helps you to run app on all connected device.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter run -d device_id : Helps you to run on specific device.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter clean : Clean Cache and tmp files.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),

                  child: Text("* flutter build apk : Generate APK file.",),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("* flutter build apk --release : Generate release apk",),
                ),
              ),
              SizedBox(height: 10,),
              Divider(height: 1,color: Colors.teal,),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Creat A New Project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("* Open Android Studio > New Flutter project > fill Project details > submit .",),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}





class insfluttter extends StatefulWidget {
  const insfluttter({Key? key}) : super(key: key);


  @override
  _insfluttterState createState() => _insfluttterState();
}
class _insfluttterState extends State<insfluttter> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Flutter Install"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://www.youtube.com/watch?v=YPKYT1buIVU&t=430s",
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






class androistudiod extends StatefulWidget {
  const androistudiod({Key? key}) : super(key: key);


  @override
  _androistudiodState createState() => _androistudiodState();
}
class _androistudiodState extends State<androistudiod> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Android Studio"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://developer.android.com/",
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





class vscodee extends StatefulWidget {
  const vscodee({Key? key}) : super(key: key);


  @override
  _vscodeeState createState() => _vscodeeState();
}
class _vscodeeState extends State<vscodee> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("VSCode"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://code.visualstudio.com/download/",
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





class sdkfl extends StatefulWidget {
  const sdkfl({Key? key}) : super(key: key);


  @override
  _sdkflState createState() => _sdkflState();
}
class _sdkflState extends State<sdkfl> {
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
            initialUrl: "https://flutter.dev/docs/get-started/install",
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







class javaora extends StatefulWidget {
  const javaora({Key? key}) : super(key: key);


  @override
  _javaoraState createState() => _javaoraState();
}
class _javaoraState extends State<javaora> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Java"),
        )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://www.oracle.com/in/java/technologies/javase/javase-jdk8-downloads.html",
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
