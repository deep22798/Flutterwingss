import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class strambuilder extends StatelessWidget {
  Stream<int> counter() async* {
    int i = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield i++;
      if (i == 100) break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>streambcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Stream Builder",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: counter(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text("Intializing...");
            }
            return Text("${snapshot.data}", style: TextStyle(fontSize: 40));
          },
        ),
      ),
    );
  }
}





class streambcode extends StatefulWidget {
  const streambcode({Key? key}) : super(key: key);

  @override
  _streambcodeState createState() => _streambcodeState();
}

class _streambcodeState extends State<streambcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/strambuilder.txt');
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
          child: Center(child: Text("Stream Builder",style: TextStyle(color: Colors.white),)),
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