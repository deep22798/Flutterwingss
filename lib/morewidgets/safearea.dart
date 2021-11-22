import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class sfearea extends StatefulWidget {
  @override
  _sfeareaState createState() => _sfeareaState();
}

class _sfeareaState extends State<sfearea> {
  var _isInSafeArea = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>safrecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("SafeArea",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SafeArea(
        top: _isInSafeArea,
        bottom: _isInSafeArea,
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                "Top text for testing the safe area.Switch to full screen view in notch mobile to test SafeArea",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isInSafeArea = !_isInSafeArea;
                      });
                    },
                    child: Text(_isInSafeArea
                        ? "SafeArea  Enabled"
                        : "SafeArea Disabled"),
                  ),
                ),
              ),
              Text(
                "Bottom text for testing the safe area.",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}





class safrecode extends StatefulWidget {
  const safrecode({Key? key}) : super(key: key);
  @override
  _safrecodeState createState() => _safrecodeState();
}

class _safrecodeState extends State<safrecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/sfearea.txt');
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
          child: Center(child: Text("Safe Area",style: TextStyle(color: Colors.white),)),
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