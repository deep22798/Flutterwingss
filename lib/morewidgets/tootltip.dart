import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class tooltip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>tootltipcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("ToolTip",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Center(child: Text("Long Press on boxes")),
          ),
          Center(
              child: Tooltip(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                message: "Green",
              )),
          Center(
              child: Tooltip(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                message: "Yelow",
              )),
          Center(
              child: Tooltip(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                message: "Red",
              )),
        ],
      ),
    );
  }
}




class tootltipcode extends StatefulWidget {
  const tootltipcode({Key? key}) : super(key: key);

  @override
  _tootltipcodeState createState() => _tootltipcodeState();
}

class _tootltipcodeState extends State<tootltipcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/tooltip.txt');
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
          child: Center(child: Text("ToolTip",style: TextStyle(color: Colors.white),)),
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