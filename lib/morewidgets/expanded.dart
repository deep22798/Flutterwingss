
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class expnded extends StatefulWidget {
  @override
  _expndedState createState() => _expndedState();
}

class _expndedState extends State<expnded> {
  String data="";

  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/expnded.txt');
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>expendedcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Expanded",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              height: 50,
              child: Center(child: Text("Container Top")),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text(" flex: 2")),
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("Container")),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text(" flex: 1")),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text("flex: 2")),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.blue,
                            height: 100,
                            child: Center(child: Text("flex: 3")),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: Center(child: Text(" flex: 1")),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 50,
              child: Center(child: Text("Container Bottom")),
            ),
          ],
        ),
      ),
    );
  }
}



class expendedcodes extends StatefulWidget {
  const expendedcodes({Key? key}) : super(key: key);

  @override
  _expendedcodesState createState() => _expendedcodesState();
}

class _expendedcodesState extends State<expendedcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/expnded.txt');
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
          child: Center(child: Text("Expended",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
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
