import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class elevationanim extends StatefulWidget {
  @override
  _elevationanimState createState() => _elevationanimState();
}

class _elevationanimState extends State<elevationanim>
    with TickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/elevationanim.txt');
    setState(() {
      data=responseText;
    });
  }
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    fetchFileData();
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 1.0, end: 13.0).animate(_animationController)
      ..addListener(
            () {
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    _animation.isDismissed;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Elivation Animation",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Icon(Icons.favorite,
                      color: Colors.pink.withOpacity(0.7), size: 40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: _animation.value + _animation.value,
                        spreadRadius: _animation.value,
                        offset: Offset(_animation.value, _animation.value),
                      ),
                    ],
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
    );
  }
}