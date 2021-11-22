import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class slivergrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>sliverappgridcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Sliver Grid",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 50,
              ),
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return new Container(
                    color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                    height: 100.0);
              }))
        ],
      ),
    );
  }
}




class sliverappgridcodes extends StatefulWidget {
  const sliverappgridcodes({Key? key}) : super(key: key);

  @override
  _sliverappgridcodesState createState() => _sliverappgridcodesState();
}

class _sliverappgridcodesState extends State<sliverappgridcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/slivergrid.txt');
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
          child: Center(child: Text("Sliver Grid",style: TextStyle(color: Colors.white),)),
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
