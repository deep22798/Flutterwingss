import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class listvew extends StatefulWidget {
  @override
  _listvewState createState() => _listvewState();
}

class _listvewState extends State<listvew> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/listvew.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("ListView",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Container(
                child: ConstrainedBox(
                    constraints: new BoxConstraints(
                      minHeight: 35.0,
                      maxHeight: 160.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: _listBuilder()),
                      ],
                    )),
              ),
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
    );
  }

  Widget _listBuilder() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 500,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index % 10]],
            child: Center(child: Text('Item $index')),
          );
        });
  }
}