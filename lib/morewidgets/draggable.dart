
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class draggablee extends StatefulWidget {
  @override
  _draggableeState createState() => _draggableeState();
}

class _draggableeState extends State<draggablee> {
  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>draggablecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Draggable",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: isSuccessful
                  ? SizedBox()
                  : Draggable(
                data: 'Flutter',
                child: FlutterLogo(
                  size: 100.0,
                ),
                feedback: FlutterLogo(
                  size: 100.0,
                ),
                childWhenDragging: Container(),
              ),
            ),
          ),
          Expanded(
            child: DragTarget(
              builder: (context, List<String?> candidateData, rejectedData) {
                return Center(
                  child: isSuccessful
                      ? Container(
                    color: Theme.of(context).accentColor.withOpacity(0.5),
                    child: Center(
                        child: Column(
                          children: <Widget>[
                            FlutterLogo(
                              size: 100.0,
                            ),
                            IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                setState(() {
                                  isSuccessful = false;
                                });
                              },
                            ),
                          ],
                        )),
                  )
                      : Container(
                    color: Theme.of(context).accentColor.withOpacity(0.7),
                  ),
                );
              },
              onWillAccept: (dynamic data) {
                return true;
              },
              onAccept: (dynamic data) {
                setState(() {
                  isSuccessful = true;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}




class draggablecode extends StatefulWidget {
  const draggablecode({Key? key}) : super(key: key);

  @override
  _draggablecodeState createState() => _draggablecodeState();
}

class _draggablecodeState extends State<draggablecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/draggablee.txt');
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
          child: Center(child: Text("Draggable",style: TextStyle(color: Colors.white),)),
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