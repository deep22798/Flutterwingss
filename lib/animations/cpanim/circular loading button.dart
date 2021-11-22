import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
class circularloadingbutton extends StatefulWidget {
  @override
  _circularloadingbuttonState createState() => _circularloadingbuttonState();
}

class _circularloadingbuttonState extends State<circularloadingbutton> with TickerProviderStateMixin {
  late AnimationController firstController;
  late Animation<double> firstAnimation;

  late AnimationController secondController;
  late Animation<double> secondAnimation;
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/circularloadingbutton.txt');
    setState(() {
      data=responseText;
    });
  }
  String data="";

  @override
  void initState() {
    fetchFileData();
    super.initState();

    firstController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    firstAnimation = Tween<double>(begin: -pi, end: pi).animate(firstController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          firstController.forward();
        }
      });

    secondController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    secondAnimation = Tween<double>(begin: -1, end: -4).animate(
        CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          secondController.forward();
        }
      });

    firstController.forward();
    secondController.forward();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Circular Loading Animation",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CustomPaint(
                    painter: MyCustomPainter(
                      firstAnimation.value,
                      secondAnimation.value,
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

class MyCustomPainter extends CustomPainter {
  final double startAngle;
  final double sweepAngle;

  MyCustomPainter(this.startAngle, this.sweepAngle);

  @override
  void paint(Canvas canvas, Size size) {
    Paint myCircle = Paint()
      ..color = Color(0xffCFCDF6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .5,
      myCircle,
    );

    Paint myArc = Paint()
      ..color = Color(0xff420097)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromLTRB(0, 0, size.width, size.height),
      startAngle,
      sweepAngle,
      false,
      myArc,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}