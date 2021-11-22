import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class cerd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>cardcod()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Card",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text('Sample Card 1'),
                      subtitle: Text('Default Elevation'),
                    ),
                  ),
                  Card(
                      elevation: 8,
                      child: ListTile(
                        leading: Icon(Icons.camera),
                        title: Text('Sample Card 2'),
                        subtitle: Text('Elevation - 8'),
                      )),
                  Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Sample Card 3'),
                        subtitle: Text('Elevation - 16'),
                      )),
                  Card(
                      elevation: 24,
                      color: Colors.pink,
                      shadowColor: Colors.yellow,
                      child: ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Sample Card 4'),
                        subtitle: Text('Elevation - 24'),
                      )),
                  Stack(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                            leading: Icon(Icons.camera),
                            title: Text('Sample Card 1 in Stack'),
                            subtitle: Text('Default Elevation'),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 8),
                        child: Card(
                            elevation: 8,
                            child: ListTile(
                              leading: Icon(Icons.camera),
                              title: Text('Sample Card 2 in Stack'),
                              subtitle: Text('Elevation - 8'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 32, 16, 16),
                        child: Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.album),
                              title: Text('Sample Card 3 in Stack'),
                              subtitle: Text('Elevation - 16'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24.0, 48, 24, 24),
                        child: Card(
                            elevation: 24,
                            child: ListTile(
                              leading: Icon(Icons.album),
                              title: Text('Sample Card 4 in Stack'),
                              subtitle: Text('Elevation - 24'),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class cardcod extends StatefulWidget {
  const cardcod({Key? key}) : super(key: key);

  @override
  _cardcodState createState() => _cardcodState();
}

class _cardcodState extends State<cardcod> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/cerd.txt');
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
          child: Center(child: Text("Card",style: TextStyle(color: Colors.white),)),
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
