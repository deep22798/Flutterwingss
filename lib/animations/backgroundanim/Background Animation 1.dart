import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class bganim1 extends StatefulWidget {
  @override
  _bganim1State createState() => _bganim1State();
}

class _bganim1State extends State<bganim1> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/bganim1.txt');
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Backgroud Animation 1",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: FlatButton(color: Colors.teal,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimatingBg1(),
                      ),
                    );
                  },
                  child: Text('VIEW ANIMATING BACKGROUND',style: TextStyle(color: Colors.white),),
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

class AnimatingBg1 extends StatefulWidget {
  @override
  _AnimatingBg1State createState() => _AnimatingBg1State();
}

class _AnimatingBg1State extends State<AnimatingBg1>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color(0xff171B70),
    Color(0xff410D75),
    Color(0xff032340),
    Color(0xff050340),
    Color(0xff2C0340),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xff092646);
  Color topColor = Color(0xff410D75);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
          () {
        setState(
              () {
            bottomColor = Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Backgroud Animation 1",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        onEnd: () {
          setState(
                () {
              index = index + 1;
              bottomColor = colorList[index % colorList.length];
              topColor = colorList[(index + 1) % colorList.length];
            },
          );
        },
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin,
            end: end,
            colors: [bottomColor, topColor],
          ),
        ),
      ),
    );
  }
}