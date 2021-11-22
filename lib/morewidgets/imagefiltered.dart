import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class imgefltr extends StatefulWidget {
  @override
  _imgefltrState createState() => _imgefltrState();
}

class _imgefltrState extends State<imgefltr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>imagefilcodee()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Image Filtered",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 4),
                    child: Image.asset("assets/splash.png"),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.matrix(Matrix4.rotationZ(0.2).storage),
                    child: Image.asset(
                      "assets/splash.png",
                      height: 100,
                      width: 200,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class imagefilcodee extends StatefulWidget {
  const imagefilcodee({Key? key}) : super(key: key);
  @override
  _imagefilcodeeState createState() => _imagefilcodeeState();
}
class _imagefilcodeeState extends State<imagefilcodee> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/imgefltr.txt');
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
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Image Filtered",style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                      child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                SizedBox(height: 20,),
                SelectableText(data),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}