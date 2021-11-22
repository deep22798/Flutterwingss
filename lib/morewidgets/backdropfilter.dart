import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class backdrop extends StatefulWidget {
  @override
  _backdropState createState() => _backdropState();
}

class _backdropState extends State<backdrop> {
  var sX = 5.0;
  var sY = 5.0;
  var textVar = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>backdropfiltrcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("BackDrop",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                ConstrainedBox(
                  child: Container(color:Colors.teal,child: Image.asset("assets/splashlogo.png")),
                  constraints: BoxConstraints.expand(),
                ),
                Container(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: sX, sigmaY: sY),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100.withOpacity(0.2),
                      ),
                      child: Center(child: Text(textVar)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Wrap(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:1, y:1"),
                    onPressed: () {
                      setState(() {
                        sX = 1;
                        sY = 1;
                        textVar = "x:1, y:1";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:1, y:5"),
                    onPressed: () {
                      setState(() {
                        sX = 1;
                        sY = 5;
                        textVar = "x:1, y:5";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:5, y:1"),
                    onPressed: () {
                      setState(() {
                        sX = 5;
                        sY = 1;
                        textVar = "x:5, y:1";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:5, y:5"),
                    onPressed: () {
                      setState(() {
                        sX = 5;
                        sY = 5;
                        textVar = "x:5, y:5";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:5, y:10"),
                    onPressed: () {
                      setState(() {
                        sX = 5;
                        sY = 10;
                        textVar = "x:5, y:10";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:10, y:5"),
                    onPressed: () {
                      setState(() {
                        sX = 10;
                        sY = 5;
                        textVar = "x:10, y:5";
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text("x:10, y:10"),
                    onPressed: () {
                      setState(() {
                        sX = 10;
                        sY = 10;
                        textVar = "x:5, y:10";
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}




class backdropfiltrcode extends StatefulWidget {
  const backdropfiltrcode({Key? key}) : super(key: key);

  @override
  _backdropfiltrcodeState createState() => _backdropfiltrcodeState();
}

class _backdropfiltrcodeState extends State<backdropfiltrcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/backdrop.txt');
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
          child: Center(child: Text("BackDrop Filter",style: TextStyle(color: Colors.white),)),
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
