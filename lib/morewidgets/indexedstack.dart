import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class indexstck extends StatefulWidget {
  @override
  _indexstckState createState() => _indexstckState();
}
class _indexstckState extends State<indexstck> {
  int _index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>indexstackcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Indexed Stack",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: IndexedStack(
              index: _index,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Index - 0"),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text("Index - 1"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text("Index - 2"),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  child: Center(
                    child: Text("Index - 3"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_index == 3)
                    _index = 0;
                  else
                    _index++;
                });
              },
              child: Text('Click Here'),
            ),
          )
        ],
      ),
    );
  }
}




class indexstackcode extends StatefulWidget {
  const indexstackcode({Key? key}) : super(key: key);

  @override
  _indexstackcodeState createState() => _indexstackcodeState();
}

class _indexstackcodeState extends State<indexstackcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/indexstck.txt');
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
          child: Center(child: Text("Indexed Stack",style: TextStyle(color: Colors.white),)),
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