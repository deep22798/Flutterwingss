import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class rippleanimabutton extends StatefulWidget {
  @override
  _rippleanimabuttonState createState() => _rippleanimabuttonState();
}

class _rippleanimabuttonState extends State<rippleanimabutton>
    with TickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/rippleanimbutton.txt');
    setState(() {
      data=responseText;
    });
  }
  late AnimationController animationController;

  @override
  void initState() {
    fetchFileData();
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Ripple animation button",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Container(color: Colors.teal,
                child: Center(
                  child: AnimatedBuilder(
                    animation: animationController,
                    builder: (context, child) {
                      return Container(
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: CircleBorder(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            8.0 * animationController.value,
                          ),
                          child: child,
                        ),
                      );
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          print('button tapped');
                        },
                        color: Colors.blue,
                        icon: Icon(
                          Icons.calendar_today,
                          size: 24,
                        ),
                      ),
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
    );
  }
}