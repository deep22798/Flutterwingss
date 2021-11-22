import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class totatbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>rotateboxcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Roatated Box",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: Container(
                color: Colors.cyan,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World!'),
                )),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: Container(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World!'),
                )),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Container(
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World!'),
                )),
          ),
          RotatedBox(
            quarterTurns: 4,
            child: Container(
                color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World!'),
                )),
          ),
        ],
      ),
    );
  }
}





class rotateboxcode extends StatefulWidget {
  const rotateboxcode({Key? key}) : super(key: key);

  @override
  _rotateboxcodeState createState() => _rotateboxcodeState();
}

class _rotateboxcodeState extends State<rotateboxcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/totatbox.txt');
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
          child: Center(child: Text("Roatated Box",style: TextStyle(color: Colors.white),)),
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