import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class gravity extends StatefulWidget {
  @override
  _gravityState createState() => _gravityState();
}

class _gravityState extends State<gravity> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/gravity.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Gravity",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      isTapped = !isTapped;
                    });
                  },
                  child: AnimatedContainer(
                    margin: EdgeInsets.only(bottom: isTapped ? 0 : 400),
                    duration: Duration(seconds: 1),
                    curve: isTapped ? Curves.bounceOut : Curves.ease,
                    height: 150,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Color(0xffFF4E4E),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          blurRadius: 10,
                          offset: Offset(0, 7),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        isTapped ? Icons.arrow_downward : Icons.arrow_upward,
                        color: Colors.white,
                        size: 35,
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
      ),
    );
  }
}