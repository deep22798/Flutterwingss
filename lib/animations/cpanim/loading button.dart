import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class loadingbutton extends StatefulWidget {
  @override
  _loadingbuttonState createState() => _loadingbuttonState();
}

class _loadingbuttonState extends State<loadingbutton>
    with TickerProviderStateMixin {
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/loadingbutton.txt');
    setState(() {
      data=responseText;
    });
  }
  String data="";
  late AnimationController controller1;
  late Animation<double> animation1;

  late AnimationController controller2;
  late Animation<double> animation2;

  late AnimationController controller3;
  late Animation<double> animation3;

  late AnimationController controller4;
  late Animation<double> animation4;

  late AnimationController controller5;
  late Animation<double> animation5;

  late AnimationController controller6;
  late Animation<double> animation6;

  late AnimationController controller7;
  late Animation<double> animation7;

  late AnimationController controller8;
  late Animation<double> animation8;

  bool boolValue1 = true;
  bool boolValue2 = true;
  bool boolValue3 = true;
  bool boolValue4 = true;
  double opacity1 = 1;
  double opacity2 = 0;

  @override
  void initState() {
    fetchFileData();
    super.initState();

    // FIRST STEP
    controller1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation1 = Tween<double>(begin: 0, end: .48)
        .animate(CurvedAnimation(parent: controller1, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });

    controller2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation2 = Tween<double>(begin: 1, end: .52)
        .animate(CurvedAnimation(parent: controller2, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });

    controller3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation3 = Tween<double>(begin: 0, end: .9)
        .animate(CurvedAnimation(parent: controller3, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          boolValue2 = false;
          boolValue3 = false;
          controller4.forward();
          controller5.forward();
        }
      });

    /// SECOND STEP
    controller4 =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation4 = Tween<double>(begin: 1.6, end: 26.74)
        .animate(CurvedAnimation(parent: controller4, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller7.forward();
          controller8.forward();
          boolValue3 = true;
          boolValue4 = false;
        }
      });

    controller5 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    animation5 = Tween<double>(begin: .01, end: 5)
        .animate(CurvedAnimation(parent: controller5, curve: Curves.easeInOut))
      ..addListener(
            () {
          setState(
                () {
              Timer(
                Duration(milliseconds: 1300),
                    () {
                  boolValue1 = false;
                  controller6.forward();
                },
              );
            },
          );
        },
      );

    controller6 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1600));
    animation6 = Tween<double>(begin: 5, end: .01)
        .animate(CurvedAnimation(parent: controller6, curve: Curves.easeInOut))
      ..addListener(
            () {
          setState(() {});
        },
      );

    /// AND FINAL ONE
    controller7 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    animation7 = Tween<double>(begin: 1, end: .5)
        .animate(CurvedAnimation(parent: controller7, curve: Curves.elasticOut))
      ..addListener(
            () {
          setState(() {});
        },
      );

    controller8 = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    animation8 = Tween<double>(begin: .0, end: .5)
        .animate(CurvedAnimation(parent: controller8, curve: Curves.elasticOut))
      ..addListener(
            () {
          setState(
                () {
              opacity2 = 1;
            },
          );
        },
      );
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    controller7.dispose();
    controller8.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Loading Animation",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 60,
                  width: 150,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(99),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(
                            () {
                          controller1.forward();
                          controller2.forward();
                          controller3.forward();
                          opacity1 = 0;
                        },
                      );
                    },
                    child: Stack(
                      children: [
                        Center(
                          child: CustomPaint(
                            painter: MyPainter(
                                animation1.value,
                                animation2.value,
                                animation3.value,
                                animation4.value,
                                boolValue1 ? animation5.value : animation6.value,
                                boolValue2 ? Color(0xff3B7BF7) : Colors.transparent,
                                boolValue3 ? Colors.transparent : Color(0xff3B7BF7),
                                animation7.value,
                                animation8.value,
                                Color(0xff3B7BF7)),
                            child: Container(),
                          ),
                        ),
                        Center(
                          child: AnimatedOpacity(
                            opacity: opacity1,
                            duration: Duration(milliseconds: 300),
                            child: Text(
                              "PAY NOW",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 2,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 400),
                            opacity: opacity2,
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
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
  final double leftValue;
  final double rightValue;
  final double topValue;
  final double startAngleValue;
  final double sweepAngleValue;
  final Color buttonColor;
  final Color loadingColor;
  final Color completionColor;
  final double completionHeight;
  final double completionRadius;

  MyPainter(
      this.leftValue,
      this.rightValue,
      this.topValue,
      this.startAngleValue,
      this.sweepAngleValue,
      this.buttonColor,
      this.loadingColor,
      this.completionHeight,
      this.completionRadius,
      this.completionColor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = buttonColor
      ..style = PaintingStyle.fill;

    Paint paintForLoading = Paint()
      ..color = loadingColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 6;

    Paint paintForThird = Paint()
      ..color = completionColor
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
        RRect.fromLTRBR(size.width * leftValue, size.height * topValue,
            size.width * rightValue, size.height, Radius.circular(99)),
        paint);

    canvas.drawArc(
        Rect.fromLTRB(size.width * .33, size.height * .1, size.width * .68,
            size.height * .94),
        startAngleValue,
        sweepAngleValue,
        false,
        paintForLoading);

    canvas.drawCircle(Offset(size.width * 0.5, size.height * completionHeight),
        size.height * completionRadius, paintForThird);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}