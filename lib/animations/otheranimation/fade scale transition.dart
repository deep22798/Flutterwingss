import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class fadescaletransition extends StatefulWidget {
  @override
  _fadescaletransitionState createState() => _fadescaletransitionState();
}

class _fadescaletransitionState extends State<fadescaletransition>
    with SingleTickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/fadescaletransition.txt');
    setState(() {
      data=responseText;
    });
  }

  late AnimationController _controller;

  @override
  void initState() {
    fetchFileData();
    _controller = AnimationController(
        value: 0.0,
        duration: const Duration(milliseconds: 500),
        reverseDuration: const Duration(milliseconds: 250),
        vsync: this)
      ..addStatusListener((status) {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _BlahBlah {
    switch (_controller.status) {
      case AnimationStatus.forward:
      case AnimationStatus.completed:
        return true;
      case AnimationStatus.reverse:
      case AnimationStatus.dismissed:
        return false;
    }

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Fade Scale Transition",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return FadeScaleTransition(
                        animation: _controller, child: child);
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    if (_BlahBlah) {
                      _controller.reverse();
                    } else {
                      _controller.forward();
                    }
                  },
                  child: Container(
                    height: 55,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 20,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        _BlahBlah ? 'HIDE' : 'SHOW',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                      child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                SizedBox(height: 20,),
                SelectableText(data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}