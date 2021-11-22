import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
class snkbr extends StatefulWidget {
  @override
  _snkbrState createState() => _snkbrState();
}

class _snkbrState extends State<snkbr> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/snkbr.txt');
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
            child: Center(child: Text("SnackBar",style: TextStyle(color: Colors.white),)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                TextButton(
                  child: Text("Simple SnackBar"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Simple SnackBar"),
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text("Colored SnackBar - 0.5 Seconds"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "SnackBar for 0.5 seconds",
                          style: TextStyle(color: Colors.red),
                        ),
                        duration: Duration(milliseconds: 500),
                        backgroundColor: Colors.lightGreenAccent,
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text("SnackBar with image"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: <Widget>[
                            Icon(
                              Icons.favorite,
                              color: Colors.deepPurple,
                            ),
                            Text(
                              " Hai",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.limeAccent,
                      ),
                    );
                  },
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
        ));
  }
}
