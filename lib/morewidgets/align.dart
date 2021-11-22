import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class alignn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>alignncode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Align",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            color: Colors.grey[200],
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}




class alignncode extends StatefulWidget {
  const alignncode({Key? key}) : super(key: key);
  @override
  _alignncodeState createState() => _alignncodeState();
}
class _alignncodeState extends State<alignncode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/alignn.txt');
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
          child: Center(child: Text("Align",style: TextStyle(color: Colors.white),)
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