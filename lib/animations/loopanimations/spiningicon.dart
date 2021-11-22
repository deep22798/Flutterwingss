import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart' show rootBundle;

class spining extends StatefulWidget {
  @override
  _spiningState createState() => _spiningState();
}

class _spiningState extends State<spining>
    with SingleTickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/spining.txt');
    setState(() {
      data=responseText;
    });
  }

  late AnimationController _controller;

  @override
  void initState() {
    fetchFileData();
    super.initState();

    _controller =
    AnimationController(vsync: this, duration: Duration(seconds: 10))
      ..repeat();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Tween Icon",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (_, child) {
                      return Transform.rotate(
                        angle: _controller.value * 2 * math.pi,
                        child: child,
                      );
                    },
                    child: Container(
                      child: Container(height: 50,width: 50,color: Colors.red,),
                      width: 100,height: 100,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,),)
                  ),
                ),
              ),
              // Container(
              //   height: 161,
              //   width: 161,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     gradient: LinearGradient(
              //       begin: Alignment.topRight,
              //       end: Alignment.bottomLeft,
              //       colors: [
              //         Colors.white.withOpacity(1),
              //         Colors.white.withOpacity(.1),
              //         Colors.white.withOpacity(.05),
              //         Colors.black.withOpacity(.05),
              //         Colors.black.withOpacity(.1),
              //         Colors.black.withOpacity(.2),
              //         Colors.black.withOpacity(.3),
              //         Colors.black.withOpacity(.4),
              //         Colors.black.withOpacity(.5),
              //         Colors.black.withOpacity(.6),
              //         Colors.black.withOpacity(.7),
              //         Colors.black.withOpacity(.8),
              //         Colors.black.withOpacity(.9),
              //         Colors.black.withOpacity(.9),
              //         Colors.black.withOpacity(1),
              //         Colors.black.withOpacity(1),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 20,),
              SelectableText(data),
            ],
          ),
        ),
      ),
    );
  }
}