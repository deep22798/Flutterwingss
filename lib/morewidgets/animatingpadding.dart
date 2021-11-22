import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class animpadding extends StatefulWidget {
  @override
  _animpaddingState createState() => _animpaddingState();
}

class _animpaddingState extends State<animpadding> {
  double padding = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedpadding()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Padding",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Center(
          child: AnimatedPadding(
            padding: EdgeInsets.all(padding),
            duration: Duration(seconds: 1),
            child: InkWell(
              child: Container(
                color: Theme.of(context).accentColor,
                child: Center(
                  child: Text("Touch me"),
                ),
              ),
              onTap: () {
                setState(() {
                  padding = (padding == 10.0) ? 40.0 : 10.0;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}



class animatedpadding extends StatefulWidget {
  const animatedpadding({Key? key}) : super(key: key);

  @override
  _animatedpaddingState createState() => _animatedpaddingState();
}

class _animatedpaddingState extends State<animatedpadding> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/animpadding.txt');
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
          child: Center(child: Text("Animated Padding",style: TextStyle(color: Colors.white),)),
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