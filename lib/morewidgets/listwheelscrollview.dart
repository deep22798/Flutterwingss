import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class listwheelsv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>listwheelcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("List View Scroll View",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: ListWheelScrollView(
        children: listItems(context),
        itemExtent: 100,
        useMagnifier: true,
        magnification: 1.25,
      ),
    );
  }
}

List<Widget> listItems(BuildContext context) {
  int i = 0;
  List<Widget> items = [];
  do {
    i += 1;
    items.add(Container(
      color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0),
    ));
  } while (i <= 100);
  return items;
}



class listwheelcode extends StatefulWidget {
  const listwheelcode({Key? key}) : super(key: key);

  @override
  _listwheelcodeState createState() => _listwheelcodeState();
}

class _listwheelcodeState extends State<listwheelcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/listwheelsv.txt');
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
          child: Center(child: Text("List View Scroll View",style: TextStyle(color: Colors.white),)),
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