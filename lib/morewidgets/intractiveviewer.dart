import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class intractiveviewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>intractivecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Intrective Viewer",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: InteractiveViewer(
          minScale: 0.1,
          maxScale: 6,
          child: Image.asset('assets/splash.png'),
        ),
      ),
    );
  }
}



class intractivecode extends StatefulWidget {
  const intractivecode({Key? key}) : super(key: key);
  @override
  _intractivecodeState createState() => _intractivecodeState();
}
class _intractivecodeState extends State<intractivecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/intractiveviewer.txt');
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
          child: Center(child: Text("Intrective Viewer",style: TextStyle(color: Colors.white),)
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