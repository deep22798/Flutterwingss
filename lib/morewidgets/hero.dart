import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class heeero extends StatefulWidget {
  heeero({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _heeeroState createState() => _heeeroState();
}

class _heeeroState extends State<heeero> {
  Widget _smallImage(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }

  Widget _bigImage(Color color) {
    return Container(
      width: 300,
      height: 300,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>herocode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Hero",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: ListView(
        children: List<Widget>.generate(10, (index) {
          Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              .withOpacity(1.0);
          Key _n1 = GlobalKey();
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: GestureDetector(
                  key: _n1,
                  child: Hero(
                    tag: index.toString(),
                    child: _smallImage(color),
                  ),
                  onTap: () => _fullImagePage(context, color, index.toString()),
                ),
                title: Text('Tap for transition.'),
              ));
        }),
      ),
    );
  }

  void _fullImagePage(BuildContext context, Color color, String tag) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal,
          title: Text("Big Image",style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: tag,
                child: _bigImage(color),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}




class herocode extends StatefulWidget {
  const herocode({Key? key}) : super(key: key);

  @override
  _herocodeState createState() => _herocodeState();
}

class _herocodeState extends State<herocode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/heeero.txt');
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
          child: Center(child: Text("Hero",style: TextStyle(color: Colors.white),)),
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
