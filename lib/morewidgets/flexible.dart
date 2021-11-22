import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class flxible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>flexiblecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Flexible",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
                height: 50,
                child: Center(child: Text("FlexFit Tight")),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        width: 10,
                        color: Colors.red,
                      )),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        width: 10,
                        color: Colors.green,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                      )),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                color: Colors.green,
                height: 50,
                child: Center(child: Text("FlexFit Loose")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class flexiblecode extends StatefulWidget {
  const flexiblecode({Key? key}) : super(key: key);
  @override
  _flexiblecodeState createState() => _flexiblecodeState();
}
class _flexiblecodeState extends State<flexiblecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/flxible.txt');
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
          child: Center(child: Text("Flexible",style: TextStyle(color: Colors.white),)
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