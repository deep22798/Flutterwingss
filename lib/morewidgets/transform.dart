import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class transform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>transformcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Transform",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(pi / 36.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Transform(
                    alignment: Alignment.topCenter,
                    transform: Matrix4.skewY(0.3)..rotateY(pi / 36.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Theme.of(context).accentColor,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Transform(
                            alignment: Alignment.topLeft,
                            transform: Matrix4.skewY(0.3)..rotateX(pi / 36.0),
                            child: Container(
                              color: Theme.of(context).primaryColor,
                              child: Center(
                                child: Text("Hello World!"),
                              ),
                            )),
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class transformcode extends StatefulWidget {
  const transformcode({Key? key}) : super(key: key);

  @override
  _transformcodeState createState() => _transformcodeState();
}

class _transformcodeState extends State<transformcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/transform.txt');
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
          child: Center(child: Text("Transform",style: TextStyle(color: Colors.white),)),
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