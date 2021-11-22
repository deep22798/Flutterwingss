import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class twinanimbuilder extends StatefulWidget {
  @override
  _twinanimbuilderWidgetState createState() =>
      _twinanimbuilderWidgetState();
}

class _twinanimbuilderWidgetState extends State<twinanimbuilder> {
  @override
  Widget build(BuildContext context) {
    Color _cValue = Colors.yellow;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>tweenanimbuilderrcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Tween Animation Builder",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color?>(
            duration: const Duration(seconds: 3),
            tween: ColorTween(begin: Colors.blue, end: _cValue),
            child: FlutterLogo(
              size: MediaQuery.of(context).size.width * 0.75,
              textColor: Colors.blue,
            ),
            builder: (BuildContext _, Color? value, Widget? child) {
              return ColorFiltered(
                child: child,
                colorFilter: ColorFilter.mode(value!, BlendMode.modulate),
              );
            },
            onEnd: () {
              setState(() {
                _cValue = Colors.green;
              });
            }),
      ),
    );
  }
}





class tweenanimbuilderrcode extends StatefulWidget {
  const tweenanimbuilderrcode({Key? key}) : super(key: key);
  @override
  _tweenanimbuilderrcodeState createState() => _tweenanimbuilderrcodeState();
}
class _tweenanimbuilderrcodeState extends State<tweenanimbuilderrcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/twinanimbuilder.txt');
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
          child: Center(child: Text("Tween Animation Builder",style: TextStyle(color: Colors.white),)
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