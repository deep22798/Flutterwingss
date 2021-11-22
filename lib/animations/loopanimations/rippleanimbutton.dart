import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class rippleanimbutton extends StatefulWidget {
  @override
  _rippleanimbuttonState createState() => _rippleanimbuttonState();
}

class _rippleanimbuttonState extends State<rippleanimbutton>
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
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Ripple Animation Button",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Center(
                child: Container(color: Colors.teal.shade500,
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