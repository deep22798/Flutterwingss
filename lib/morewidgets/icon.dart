import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class iccon extends StatefulWidget {
  @override
  _icconState createState() => _icconState();
}

class _icconState extends State<iccon> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/iccon.txt');
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
          child: Center(child: Text("Icon",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 48,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 48,
                  semanticLabel: "Favorite",
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 48.0,
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