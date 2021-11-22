import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class wrpp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>wrapcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Wrap",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 16.0, // gap between adjacent chips
                  runSpacing: 8.0, // gap between lines
                  children: <Widget>[
                    CircleAvatar(child: Text('A')),
                    CircleAvatar(child: Text('B')),
                    CircleAvatar(child: Text('C')),
                    CircleAvatar(child: Text('D')),
                    CircleAvatar(child: Text('E')),
                    CircleAvatar(child: Text('F')),
                    CircleAvatar(child: Text('G')),
                    CircleAvatar(child: Text('H')),
                    CircleAvatar(child: Text('I')),
                    CircleAvatar(child: Text('J')),
                    CircleAvatar(child: Text('K')),
                    CircleAvatar(child: Text('L')),
                    CircleAvatar(child: Text('M')),
                    CircleAvatar(child: Text('N')),
                    CircleAvatar(child: Text('O')),
                    CircleAvatar(child: Text('P')),
                    CircleAvatar(child: Text('Q')),
                    CircleAvatar(child: Text('R')),
                    CircleAvatar(child: Text('S')),
                    CircleAvatar(child: Text('T')),
                    CircleAvatar(child: Text('U')),
                    CircleAvatar(child: Text('V')),
                    CircleAvatar(child: Text('W')),
                    CircleAvatar(child: Text('X')),
                    CircleAvatar(child: Text('Y')),
                    CircleAvatar(child: Text('Z')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 16.0, // gap between adjacent chips
                runSpacing: 8.0, // gap between lines
                children: <Widget>[
                  CircleAvatar(child: Text('0')),
                  CircleAvatar(child: Text('1')),
                  CircleAvatar(child: Text('2')),
                  CircleAvatar(child: Text('3')),
                  CircleAvatar(child: Text('4')),
                  CircleAvatar(child: Text('5')),
                  CircleAvatar(child: Text('6')),
                  CircleAvatar(child: Text('7')),
                  CircleAvatar(child: Text('8')),
                  CircleAvatar(child: Text('9')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class wrapcodes extends StatefulWidget {
  const wrapcodes({Key? key}) : super(key: key);

  @override
  _wrapcodesState createState() => _wrapcodesState();
}

class _wrapcodesState extends State<wrapcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/wrpp.txt');
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
          child: Center(child: Text("Wrap",style: TextStyle(color: Colors.white),)),
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
