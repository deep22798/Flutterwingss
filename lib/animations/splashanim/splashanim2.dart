import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:page_transition/page_transition.dart';

class splashanim2 extends StatefulWidget {
  @override
  _splashanim2State createState() => _splashanim2State();
}

class _splashanim2State extends State<splashanim2> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/splashanim2.txt');
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
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Splash Animation 2",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Suppose this is an app in your Phone\'s home page',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30,),
                    OpenContainer(
                      closedBuilder: (_, openContainer) {
                        return Container(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Text(
                              'Click me',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      },
                      openColor: Colors.teal,
                      closedElevation: 20,
                      closedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      transitionDuration: Duration(milliseconds: 700),
                      openBuilder: (_, closeContainer) {
                        return SecondClass();
                      },
                    ),
                  ],
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

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    )..addStatusListener(
          (status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).pushReplacement(
            PageTransition(
              type: PageTransitionType.bottomToTop,
              child: ThirdPage(),
            ),
          );
          Timer(
            Duration(milliseconds: 300),
                () {
              scaleController.reset();
            },
          );
        }
      },
    );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 12).animate(scaleController);

    Timer(Duration(seconds: 2), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 30.0),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'YOUR APP\'S NAME',
                speed: Duration(milliseconds: 150),
              ),
            ],
            isRepeatingAnimation: false,
            repeatForever: false,
            displayFullTextOnTap: false,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Go Back'),
        centerTitle: true,
        brightness: Brightness.dark,
        backgroundColor: Colors.teal
      ),
      body: Center(
        child: Text(
          "APP HOME PAGE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}