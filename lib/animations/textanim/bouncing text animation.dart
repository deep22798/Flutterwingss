import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class bouncingtext extends StatefulWidget {
  @override
  _bouncingtextState createState() => _bouncingtextState();
}

class _bouncingtextState extends State<bouncingtext> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/bouncingtext.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  bool animated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Bouncing Text",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                AnimatedDefaultTextStyle(
                  child: Text('bounce'),
                  style : animated ? TextStyle(
                    color: Colors.blue,
                    fontSize: 80,
                  ) : TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.elasticOut,
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  child: Text('Animate'),
                  onPressed: () {
                    setState(() {
                      animated = !animated;
                    });
                  },
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