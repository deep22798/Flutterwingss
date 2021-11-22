import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class animswither extends StatefulWidget {
  animswither({Key? key}) : super(key: key);

  @override
  _animswitherState createState() => _animswitherState();
}

class _animswitherState extends State<animswither> {
  bool switchChild = true;

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.pink,
      Colors.blue,
      Colors.amber,
      Colors.deepPurple
    ];
    Random random = new Random();

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>animswitchercode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Switcher",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 3),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: switchChild
                  ? Container(
                key: UniqueKey(),
                height: 100.0,
                width: 100.0,
                color: colors[random.nextInt(colors.length)],
              )
                  : Container(
                key: UniqueKey(),
                height: 150.0,
                width: 150.0,
                color: colors[random.nextInt(colors.length)],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                switchChild = !switchChild;
              });
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}





class animswitchercode extends StatefulWidget {
  const animswitchercode({Key? key}) : super(key: key);

  @override
  _animswitchercodeState createState() => _animswitchercodeState();
}

class _animswitchercodeState extends State<animswitchercode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/animswither.txt');
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
          child: Center(child: Text("Animated Switcher",style: TextStyle(color: Colors.white),)),
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

