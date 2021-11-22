import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

/// Sliver app bars are typically used as the first child of a CustomScrollView, which lets the app bar integrate
/// with the scroll view so that it can vary in height according to the scroll offset or float above the other
/// content in the scroll view.
class sliverappbrr extends StatefulWidget {
  @override
  _sliverappbrrState createState() => _sliverappbrrState();
}

class _sliverappbrrState extends State<sliverappbrr> {
  String data="";

  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/sliverappbrr.txt');
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
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>sliverappbarcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.blue,
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver Appbar'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Scaffold(
                  body: Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class sliverappbarcodes extends StatefulWidget {
  const sliverappbarcodes({Key? key}) : super(key: key);

  @override
  _sliverappbarcodesState createState() => _sliverappbarcodesState();
}

class _sliverappbarcodesState extends State<sliverappbarcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/sliverappbrr.txt');
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
          child: Center(child: Text("Sliver Appbar",style: TextStyle(color: Colors.white),)),
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
