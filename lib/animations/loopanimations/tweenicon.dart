
import 'package:animator/animator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class tweenicon extends StatefulWidget {
  @override
  _tweeniconState createState() => _tweeniconState();
}

class _tweeniconState extends State<tweenicon> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/tweenicon.txt');
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
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Tween Icon",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Animator<double>(
                    duration: Duration(milliseconds: 1500),
                    cycles: 0,
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 0.0, end: 15.0),
                    builder: (context, animatorState, child) => Container(
                      margin: EdgeInsets.all(animatorState.value),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFF5757),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFF5757).withOpacity(0.5),
                            offset: Offset(0, 5),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 40,
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
              SelectableText(data)
            ],
          ),
        ),
      ),
    );
  }
}