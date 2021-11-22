import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class fdtransition extends StatefulWidget {
  @override
  _fdtransitionState createState() => _fdtransitionState();
}

class _fdtransitionState extends State<fdtransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>fadetransitioncode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Fade Transition",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Center(
          child: FadeTransition(
              opacity: _animation as Animation<double>,
              child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ))),
        ),
      ),
    );
  }
}





class fadetransitioncode extends StatefulWidget {
  const fadetransitioncode({Key? key}) : super(key: key);
  @override
  _fadetransitioncodeState createState() => _fadetransitioncodeState();
}
class _fadetransitioncodeState extends State<fadetransitioncode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/fdtransition.txt');
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
          child: Center(child: Text("Fade Transition",style: TextStyle(color: Colors.white),)
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