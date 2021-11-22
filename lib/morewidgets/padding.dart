import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pdding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>padingcodee()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Padding",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.orange,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0, top: 16.0),
                    child: Container(
                      color: Colors.yellow,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 16.0, left: 16.0),
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class padingcodee extends StatefulWidget {
  const padingcodee({Key? key}) : super(key: key);
  @override
  _padingcodeeState createState() => _padingcodeeState();
}

class _padingcodeeState extends State<padingcodee> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/pdding.txt');
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
          child: Center(child: Text("Padding",style: TextStyle(color: Colors.white),)),
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