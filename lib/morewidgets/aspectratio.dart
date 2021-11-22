import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class aspectratio extends StatefulWidget {
  @override
  _aspectratioState createState() => _aspectratioState();
}

class _aspectratioState extends State<aspectratio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>aspectratiocode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Aspect Ratio",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 3 / 2, //3:2
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                AspectRatio(
                  aspectRatio: 5 / 2, //5:2
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                AspectRatio(
                  aspectRatio: 16 / 9, //16:9
                  child: Container(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          )),
    );
  }
}




class aspectratiocode extends StatefulWidget {
  const aspectratiocode({Key? key}) : super(key: key);

  @override
  _aspectratiocodeState createState() => _aspectratiocodeState();
}

class _aspectratiocodeState extends State<aspectratiocode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/aspectratio.txt');
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
          child: Center(child: Text("Aspect ratio",style: TextStyle(color: Colors.white),)),
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