import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
class circularfabbuttonma extends StatefulWidget {
  const circularfabbuttonma({Key? key}) : super(key: key);

  @override
  _circularfabbuttonmaState createState() => _circularfabbuttonmaState();
}

class _circularfabbuttonmaState extends State<circularfabbuttonma> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/cfb.txt');
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
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Cicular Fab Button Button",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 20,),
              SelectableText(data)
            ],
          ),
        ),
      ),
    );
  }
}
