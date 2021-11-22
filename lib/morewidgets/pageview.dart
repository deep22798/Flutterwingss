import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pagevieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>pageviewcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Page View",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Swipe UP"),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Center(
              child: Text("Swipe UP or Down"),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text("Swipe UP or Down"),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Center(
              child: Text("Swipe UP or Down"),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: Center(
              child: Text("Swipe Down"),
            ),
          ),
        ],
      ),
    );
  }
}





class pageviewcode extends StatefulWidget {
  const pageviewcode({Key? key}) : super(key: key);

  @override
  _pageviewcodeState createState() => _pageviewcodeState();
}

class _pageviewcodeState extends State<pageviewcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/pagevieww.txt');
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
          child: Center(child: Text("Page View",style: TextStyle(color: Colors.white),)),
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