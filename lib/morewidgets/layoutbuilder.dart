import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class layoutbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>layoubuildercode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Layout Builder",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxHeight < 500 || constraints.maxWidth > 500) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(color: Colors.greenAccent),
                  ),
                  Expanded(
                    child: Container(color: Colors.orange),
                  ),
                  Expanded(
                    child: Container(color: Colors.yellow),
                  ),
                  Expanded(
                    child: Container(color: Colors.lightBlueAccent),
                  )
                ],
              );
            } else {
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(color: Colors.greenAccent),
                  ),
                  Expanded(
                    child: Container(color: Colors.orange),
                  ),
                  Expanded(
                    child: Container(color: Colors.yellow),
                  ),
                  Expanded(
                    child: Container(color: Colors.lightBlueAccent),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}




class layoubuildercode extends StatefulWidget {
  const layoubuildercode({Key? key}) : super(key: key);
  @override
  _layoubuildercodeState createState() => _layoubuildercodeState();
}
class _layoubuildercodeState extends State<layoubuildercode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/layoutbuilder.txt');
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
          child: Center(child: Text("Layout Builder",style: TextStyle(color: Colors.white),)
          ),
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