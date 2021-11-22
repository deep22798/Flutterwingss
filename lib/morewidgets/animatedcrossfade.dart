import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class animcrossfade extends StatefulWidget {
  @override
  _animcrossfadeState createState() => _animcrossfadeState();
}

class _animcrossfadeState extends State<animcrossfade> {
  bool isChanging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>animcrossfadecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Cross Fade",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: const FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 200.0),
                secondChild: const FlutterLogo(
                    style: FlutterLogoStyle.stacked, size: 200.0),
                crossFadeState: isChanging
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton(
                child: Text("Click Me!"),
                onPressed: () {
                  setState(() {
                    setState(() {
                      isChanging = !isChanging;
                    });
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}




class animcrossfadecode extends StatefulWidget {
  const animcrossfadecode({Key? key}) : super(key: key);

  @override
  _animcrossfadecodeState createState() => _animcrossfadecodeState();
}

class _animcrossfadecodeState extends State<animcrossfadecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/animcrossfade.txt');
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
          child: Center(child: Text("Animated Cross Fade",style: TextStyle(color: Colors.white),)),
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