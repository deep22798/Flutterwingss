import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class animposi extends StatefulWidget {
  @override
  _animposiState createState() => _animposiState();
}

class _animposiState extends State<animposi> {
  bool _first = true;

  double _left = 20;
  double _top = 20;
  double _right = 20;
  double _bottom = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>animposcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Position",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  left: _left,
                  top: _top,
                  right: _right,
                  bottom: _bottom,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: const Text('CLICK ME'),
            onPressed: () {
              setState(() {
                _left = _first ? 10 : 30;
                _top = _first ? 80 : 30;
                _right = _first ? 10 : 30;
                _bottom = _first ? 80 : 30;

                _first = !_first;
              });
            },
          ),
        ],
      ),
    );
  }
}




class animposcode extends StatefulWidget {
  const animposcode({Key? key}) : super(key: key);
  @override
  _animposcodeState createState() => _animposcodeState();
}
class _animposcodeState extends State<animposcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/animposi.txt');
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
          child: Center(child: Text("Animated Position",style: TextStyle(color: Colors.white),)
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