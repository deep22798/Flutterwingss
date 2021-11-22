import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;


class buttonn extends StatefulWidget {
  @override
  _buttonnState createState() => _buttonnState();
}

class _buttonnState extends State<buttonn> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/buttonn.txt');
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
          child: Center(child: Text("Buttons",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  child: Text("Text Button"),
                  onPressed: () {},
                ),

                ElevatedButton(
                  child: Text("Elevated Button"),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.sms_failed,
                    color: Colors.blue,
                    size: 36,
                  ),
                  tooltip: 'Image Button',
                  onPressed: () {},
                ),

//For Ripple Effect Ink Well is used
                Material(
                  //  needed
                  color: Colors.orange,
                  child: InkWell(
                    onTap: () {},
                    child: Container(width: 80.0, height: 40.0),
                  ),
                ),
                RawMaterialButton(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.limeAccent,
                  ),
                  onPressed: () {},
                  shape: CircleBorder(),
                  elevation: 2,
                  splashColor: Colors.transparent,
                  fillColor: Colors.deepPurpleAccent,
                  highlightColor: Colors.transparent,
                ),
                BackButton(
                  onPressed: () {},
                ),
                CloseButton(
                  onPressed: () {},
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
    );
  }
}