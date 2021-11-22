
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mouseregion extends StatefulWidget {
  @override
  _mouseregionState createState() => _mouseregionState();
}

class _mouseregionState extends State<mouseregion> {
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>mouseregioncode()));
    },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Mouse Region",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: MouseRegion(
        onHover: (event) {
          setState(() {
            x = event.position.dx;
            y = event.position.dy;
          });
        },
        cursor: SystemMouseCursors.basic,
        child: Container(
          child: Center(
            child: Text(
              'You touched at: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
            ),
          ),
        ),
      ),
    );
  }
}






class mouseregioncode extends StatefulWidget {
  const mouseregioncode({Key? key}) : super(key: key);
  @override
  _mouseregioncodeState createState() => _mouseregioncodeState();
}
class _mouseregioncodeState extends State<mouseregioncode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/mouseregion.txt');
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
          child: Center(child: Text("Mouse Region",style: TextStyle(color: Colors.white),)
          ),
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