import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class containerr extends StatefulWidget {
  @override
  _containerrState createState() => _containerrState();
}

class _containerrState extends State<containerr> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/containerr.txt');
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
          child: Center(child: Text("Container",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.teal,
                  child: Center(
                      child: Text(
                        'I am container',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                  width: MediaQuery.of(context).size.width,
                  height: 96.0,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.teal,
                  alignment: Alignment.center,
                  child: Text('Hai, I am  Slanting',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white)),
                  transform: Matrix4.skewY(0.2),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  constraints: BoxConstraints.expand(
                    height:
                    Theme.of(context).textTheme.headline4!.fontSize! * 1.0 + 50.0,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.teal,
                  alignment: Alignment.center,
                  child: Text(
                    'I am also Slanting,but see my edges',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  transform: Matrix4.rotationZ(0.2),
                ),
                SizedBox(
                  height: 64,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.teal,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.green,
                          child: Center(
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.red,
                              child: Center(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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