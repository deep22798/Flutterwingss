import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart' show rootBundle;

class bouncerippleanimation extends StatefulWidget {
  @override
  _bouncerippleanimationState createState() => _bouncerippleanimationState();
}

class _bouncerippleanimationState extends State<bouncerippleanimation> with TickerProviderStateMixin {
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/bouncerippleanimation.txt');
    setState(() {
      data=responseText;
    });
  }
  String data="";

  late AnimationController rippleController;
  late AnimationController centerCircleController;

  late Animation<double> rippleRadius;
  late Animation<double> rippleOpacity;
  late Animation<double> centerCircleRadius;

  @override
  void initState() {
    fetchFileData();
    rippleController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 2500,
      ),
    );
    rippleRadius = Tween<double>(begin: 0, end: 150).animate(
      CurvedAnimation(
        parent: rippleController,
        curve: Curves.ease,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener(
            (status) {
          if (status == AnimationStatus.completed) {
            rippleController.repeat();
          } else if (status == AnimationStatus.dismissed) {
            rippleController.forward();
          }
        },
      );

    rippleOpacity = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: rippleController,
        curve: Curves.ease,
      ),
    )..addListener(() {
      setState(() {});
    });


    centerCircleController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1250,
      ),
    );
    centerCircleRadius = Tween<double>(begin: 22, end: 16).animate(
        CurvedAnimation(
            parent: centerCircleController,
            curve: Curves.ease,
            reverseCurve: Curves.easeInOut))
      ..addListener(
            () {
          setState(() {});
        },
      )
      ..addStatusListener(
            (status) {
          if (status == AnimationStatus.completed) {
            centerCircleController.reverse();
          } else if (status == AnimationStatus.dismissed) {
            centerCircleController.forward();
          }
        },
      );

    Timer(
      Duration(milliseconds: 1600),
          () {
        rippleController.forward();
      },
    );
    centerCircleController.forward();
    super.initState();
  }

  @override
  void dispose() {
    rippleController.dispose();
    centerCircleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Bounce ripple Animation",style: TextStyle(color: Colors.white),)),
        ),
      ),

      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: displayWidth,
                  width: displayWidth,
                  child: CustomPaint(
                    painter: MyPainter(
                      rippleRadius.value,
                      rippleOpacity.value,
                      centerCircleRadius.value,
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

class MyPainter extends CustomPainter {
  final double rippleRadius;
  final double rippleOpacity;
  final double centerCircleRadius;

  MyPainter(
      this.rippleRadius,
      this.rippleOpacity,
      this.centerCircleRadius,
      );

  @override
  void paint(Canvas canvas, Size size) {
    var firstPaint = Paint()
      ..color = Colors.blue.withOpacity(rippleOpacity)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      rippleRadius,
      firstPaint,
    );

    var secondPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width / 11,
      secondPaint,
    );

    var thirdPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width / centerCircleRadius,
      thirdPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}