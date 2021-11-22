import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class spacerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>spacercode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Spaccer",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(
                  flex: 10,
                ),
                Text("Roll to this side")
              ]),
              Divider(),
              Row(children: <Widget>[
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(
                  flex: 10,
                ),
                Icon(Icons.camera),
              ]),
              Divider(),
              Row(children: <Widget>[
                Icon(Icons.camera),
                Spacer(),
                Icon(Icons.camera),
                Spacer(
                  flex: 4,
                ),
                Icon(Icons.camera),
                Spacer(
                  flex: 6,
                ),
                Icon(Icons.camera),
              ]),
              Divider(),
              Row(
                children: <Widget>[
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                  Spacer(
                    flex: 6,
                  ),
                  Icon(Icons.camera),
                  Spacer(
                    flex: 4,
                  ),
                  Icon(Icons.camera),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Icon(Icons.camera),
                  Spacer(
                    flex: 4,
                  ),
                  Icon(Icons.camera),
                  Spacer(
                    flex: 6,
                  ),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Icon(Icons.camera),
                  Spacer(
                    flex: 8,
                  ),
                  Icon(Icons.camera),
                  Spacer(
                    flex: 2,
                  ),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("I am empty"),
                  Spacer(
                    flex: 6,
                  ),
                  Icon(Icons.camera),
                  Spacer(
                    flex: 4,
                  ),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("I am empty"),
                  Spacer(
                    flex: 10,
                  ),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                  Spacer(),
                  Icon(Icons.camera),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}




class spacercode extends StatefulWidget {
  const spacercode({Key? key}) : super(key: key);

  @override
  _spacercodeState createState() => _spacercodeState();
}

class _spacercodeState extends State<spacercode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/spacerr.txt');
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
          child: Center(child: Text("Spaccer",style: TextStyle(color: Colors.white),)),
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

