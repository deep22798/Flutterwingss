import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class wavytext extends StatefulWidget {
  @override
  _wavytextState createState() => _wavytextState();
}

class _wavytextState extends State<wavytext> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/textscrollanim.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Wavy Text Animation",style: TextStyle(color: Colors.white),)),
        ),
      ),
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Center(
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 30),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Hello World!'),
                      WavyAnimatedText('Look at the waves.'),
                    ],
                    repeatForever: true,
                    isRepeatingAnimation: true,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 20,),
              SelectableText(data)
            ],
          ),
        ),
      ),
    );
  }
}