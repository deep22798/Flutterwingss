import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class chipp extends StatefulWidget {
  @override
  _chippState createState() => _chippState();
}

class _chippState extends State<chipp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>chipcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Chip",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Center(
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text('FT')),
                label: Text('Flutter Tutorial'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(Icons.share)),
                label: Text('Share'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(Icons.camera)),
                label: Text('Camera'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor,
                    child: Text('F')),
                label: Text('Feedback'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class chipcode extends StatefulWidget {
  const chipcode({Key? key}) : super(key: key);

  @override
  _chipcodeState createState() => _chipcodeState();
}

class _chipcodeState extends State<chipcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/chipp.txt');
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
          child: Center(child: Text("Chip",style: TextStyle(color: Colors.white),)),
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
