import 'package:animator/animator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class heartbeat extends StatefulWidget {
  @override
  _heartbeatState createState() => _heartbeatState();
}

class _heartbeatState extends State<heartbeat> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/heartbeatanim.txt');
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
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("HeartBeat Animation",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: _width / 2.7,
                        width: _width / 2.7,
                        child: Animator<double>(
                          duration: Duration(milliseconds: 1000),
                          cycles: 0,
                          curve: Curves.elasticIn,
                          tween: Tween<double>(begin: 20.0, end: 25.0),
                          builder: (context, animatorState, child) => Icon(
                            Icons.favorite,
                            size: animatorState.value * 5,
                            color: Color(0xFFFF5757),
                          ),
                        ),
                      ),
                      Container(
                        height: _width / 2.7,
                        width: _width / 2.7,
                        child: Animator<double>(
                          duration: Duration(milliseconds: 1000),
                          cycles: 0,
                          curve: Curves.elasticInOut,
                          tween: Tween<double>(begin: 20.0, end: 25.0),
                          builder: (context, animatorState, child) => Icon(
                            Icons.favorite,
                            size: animatorState.value * 5,
                            color: Color(0xFFFF5757),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: _width / 2.7,
                        width: _width / 2.7,
                        child: Animator<double>(
                          duration: Duration(milliseconds: 1000),
                          cycles: 0,
                          curve: Curves.bounceOut,
                          tween: Tween<double>(begin: 20.0, end: 25.0),
                          builder: (context, animatorState, child) => Icon(
                            Icons.favorite,
                            size: animatorState.value * 5,
                            color: Color(0xFFFF5757),
                          ),
                        ),
                      ),
                      Container(
                        height: _width / 2.7,
                        width: _width / 2.7,
                        child: Animator<double>(
                          duration: Duration(milliseconds: 1000),
                          cycles: 0,
                          curve: Curves.elasticOut,
                          tween: Tween<double>(begin: 20.0, end: 25.0),
                          builder: (context, animatorState, child) => Icon(
                            Icons.favorite,
                            size: animatorState.value * 5,
                            color: Color(0xFFFF5757),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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