import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class plceholdr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>placeholder()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("PlaceHolder",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(child: Placeholder()),
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: Placeholder(
                color: Colors.purple,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              width: 200,
              child: Placeholder(
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}



class placeholder extends StatefulWidget {
  const placeholder({Key? key}) : super(key: key);

  @override
  _placeholderState createState() => _placeholderState();
}

class _placeholderState extends State<placeholder> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/plceholdr.txt');
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
          child: Center(child: Text("Placeholder",style: TextStyle(color: Colors.white),)),
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