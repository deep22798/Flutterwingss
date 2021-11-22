import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SCSV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SCSVcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Single Child Scroll View",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.blue, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.yellow, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.red, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.redAccent, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.yellowAccent, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.greenAccent, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.green, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.lightGreen, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.pink, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.purple, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.orange, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.blue, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.yellowAccent, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.redAccent, // Yellow
                  height: 200.0,
                ),
                Container(
                  color: Colors.pink, // Yellow
                  height: 200.0,
                ),
              ],
            ),
          )),
    );
  }
}



class SCSVcodes extends StatefulWidget {
  const SCSVcodes({Key? key}) : super(key: key);

  @override
  _SCSVcodesState createState() => _SCSVcodesState();
}

class _SCSVcodesState extends State<SCSVcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/SCSV.txt');
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
          child: Center(child: Text("Single Child Scroll View",style: TextStyle(color: Colors.white),)),
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
