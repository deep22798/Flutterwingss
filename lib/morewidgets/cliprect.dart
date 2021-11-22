import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class clirect extends StatefulWidget {
  @override
  _clirectState createState() => _clirectState();
}

class _clirectState extends State<clirect> {
  var _size = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>cliprectcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Cliprect",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: Center(
                    child: FlutterLogo(
                      size: _size + 10,
                    )),
              ),
              borderRadius: BorderRadius.circular(_size),
            ),
          ),
          Container(
            child: Slider(
              value: _size,
              activeColor: Theme.of(context).primaryColor,
              inactiveColor: Theme.of(context).primaryColor.withOpacity(0.3),
              min: 0.0,
              max: 100.0,
              divisions: 100,
              onChanged: (double value) {
                setState(() {
                  _size = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}


class cliprectcodes extends StatefulWidget {
  const cliprectcodes({Key? key}) : super(key: key);

  @override
  _cliprectcodesState createState() => _cliprectcodesState();
}

class _cliprectcodesState extends State<cliprectcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/clirect.txt');
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
          child: Center(child: Text("Cliprect",style: TextStyle(color: Colors.white),)),
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



