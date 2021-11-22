import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class clipov extends StatefulWidget {
  @override
  _clipovState createState() => _clipovState();
}

class _clipovState extends State<clipov> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>clipovalcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Clipoval",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                    "Based image height and width it automatically clips, if we want we can customize using clipper",
                    textAlign: TextAlign.center,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            ClipOval(
              child: Image.asset("assets/splash.png"),
            ),
            SizedBox(
              height: 50,
            ),
            ClipOval(
              child: Image.asset("assets/splash.png"),
            ),
          ],
        ),
      ),
    );
  }
}



class clipovalcodes extends StatefulWidget {
  const clipovalcodes({Key? key}) : super(key: key);
  @override
  _clipovalcodesState createState() => _clipovalcodesState();
}

class _clipovalcodesState extends State<clipovalcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/clipov.txt');
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
          child: Center(child: Text("Clipoval",style: TextStyle(color: Colors.white),)),
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