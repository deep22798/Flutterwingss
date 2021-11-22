import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LAbsorbPointer extends StatefulWidget {
  @override
  _LAbsorbPointerState createState() => _LAbsorbPointerState();
}

class _LAbsorbPointerState extends State<LAbsorbPointer> {
  late var txtString;

  @override
  void initState() {
    super.initState();
    setState(() {
      txtString = "Touch above container";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>absorbpointercode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Absorb Pointer",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  child: Container(color: Colors.pink),
                  onTap: () {
                    setState(() {
                      txtString = "You Touched Pink Container";
                    });
                  },
                ),
                AbsorbPointer(
                  absorbing: true,
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 2,
                      color: Colors.yellow,
                      child: Center(
                        child: Text("I am visible to hit testing"),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        txtString = "You Touched Yellow Container";
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  txtString,
                  style: TextStyle(fontSize: 18),
                ),
              ))
        ],
      ),
    );
  }
}


class absorbpointercode extends StatefulWidget {
  const absorbpointercode({Key? key}) : super(key: key);

  @override
  _absorbpointercodeState createState() => _absorbpointercodeState();
}

class _absorbpointercodeState extends State<absorbpointercode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/LAbsorbPointer.txt');
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
          child: Center(child: Text("Absorb pointer",style: TextStyle(color: Colors.white),)),
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