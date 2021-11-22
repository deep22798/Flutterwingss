import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:marquee/marquee.dart';
class textscrollanim extends StatefulWidget {
  @override
  _textscrollanimState createState() => _textscrollanimState();
}

class _textscrollanimState extends State<textscrollanim> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/textscrollanim.txt');
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
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Text Animation",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(color: Colors.teal,height: 50,width: double.infinity,
                child: Marquee(
                  text: 'There once was a boy who told this story about a boy: "',
                  style: TextStyle(fontSize: 20),
                  fadingEdgeStartFraction: 0.2,
                  fadingEdgeEndFraction: 0.2,
                  blankSpace: 50,
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



//    Try it.
//
// class textscrollanim extends StatefulWidget {
//   @override
//   _textscrollanimState createState() => _textscrollanimState();
// }
//
// class _textscrollanimState extends State<textscrollanim> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Marquee(
//         text: 'Some sample text that takes some space.',
//         style: TextStyle(fontWeight: FontWeight.bold),
//         scrollAxis: Axis.horizontal,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         // crossAxisAlignment: CrossAxisAlignment.end,
//         blankSpace: 20.0,
//         velocity: 100.0,
//         pauseAfterRound: Duration(seconds: 1),
//         startPadding: 10.0,
//         accelerationDuration: Duration(seconds: 1),
//         accelerationCurve: Curves.linear,
//         decelerationDuration: Duration(milliseconds: 500),
//         decelerationCurve: Curves.easeOut,
//       ),
//     );
//   }
// }