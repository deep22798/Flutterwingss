import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class txtx extends StatefulWidget {
  @override
  _txtxState createState() => _txtxState();
}

class _txtxState extends State<txtx> {
  String data="";

  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/txtx.txt');
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
          child: Center(child: Text("Text",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView( scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Simple Text Widget
                  Text("Simple Text"),

                  //Simple Text Widget with custom styles

                  Text(
                    'Over flow Text will skipped automatically. So lets have some Long text to get skipped',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  // Shadow Text
                  Text(
                    "Shadow Text",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        shadows: [Shadow(color: Colors.amber, offset: Offset(2, 4))]),
                  ),
                  // Text.rich- Text widget can display a paragraph with differently styled TextSpans
                  //  Its similar to RichText

                  Text.rich(
                    TextSpan(
                      text: 'Hi, I am ',
                      //default text style
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Italic, ',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: 'Bold,',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Normal',
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),

                  // RichText, which gives you more control over the text styles.

                  RichText(
                    softWrap: true,
                    text: TextSpan(
                      text: 'I am ',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'RichText ',
                            style: TextStyle(color: Colors.green, fontSize: 24)),
                        TextSpan(
                            text: 'similar to ',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: 'Text.rich',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
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
      ),
    );
  }
}
