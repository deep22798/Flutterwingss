import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class animatingtext extends StatefulWidget {
  @override
  _animatingtextState createState() => _animatingtextState();
}

class _animatingtextState extends State<animatingtext> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/animatingtext.txt');
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
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animating Text",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SlideFadeTransition(
                  curve: Curves.elasticOut,
                  delayStart: Duration(milliseconds: 500),
                  animationDuration: Duration(milliseconds: 1200),
                  offset: 2.5,
                  direction: Direction.horizontal,
                  child: Text(
                    'Hello! I\'m gonna animate.' ,
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
                SlideFadeTransition(
                  curve: Curves.elasticOut,
                  delayStart: Duration(milliseconds: 1000),
                  animationDuration: Duration(milliseconds: 1200),
                  offset: 2.5,
                  direction: Direction.vertical,
                  child: Text(
                    'Hello! I\'m gonna animate.' ,
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
                SlideFadeTransition(
                  delayStart: Duration(milliseconds: 1000),
                  animationDuration: Duration(milliseconds: 700),
                  child: Text(
                    'Hello! I\'m gonna animate.\nHello! I\'m gonna animate.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SlideFadeTransition(
                  curve: Curves.elasticOut,
                  delayStart: Duration(milliseconds: 1800),
                  animationDuration: Duration(milliseconds: 1200),
                  offset: -2.5,
                  direction: Direction.vertical,
                  child: Text(
                    'Hello! I\'m gonna animate.' ,
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
                SlideFadeTransition(
                  delayStart: Duration(milliseconds: 2300),
                  animationDuration: Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  offset: 5,
                  child: Text(
                    'Hello! I\'m gonna animate.\nHello! I\'m gonna animate.',
                    style: TextStyle(fontSize: 20),
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

enum Direction { vertical, horizontal }

class SlideFadeTransition extends StatefulWidget {
  final Widget child;

  final double offset;

  final Curve curve;

  final Direction direction;

  final Duration delayStart;

  final Duration animationDuration;

  SlideFadeTransition({
    required this.child,
    this.offset = 1.0,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
  });

  @override
  _SlideFadeTransitionState createState() => _SlideFadeTransitionState();
}

class _SlideFadeTransitionState extends State<SlideFadeTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animationSlide;

  late AnimationController _animationController;

  late Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    if (widget.direction == Direction.vertical) {
      _animationSlide =
          Tween<Offset>(begin: Offset(0, widget.offset), end: Offset(0, 0))
              .animate(CurvedAnimation(
            curve: widget.curve,
            parent: _animationController,
          ));
    } else {
      _animationSlide =
          Tween<Offset>(begin: Offset(widget.offset, 0), end: Offset(0, 0))
              .animate(CurvedAnimation(
            curve: widget.curve,
            parent: _animationController,
          ));
    }

    _animationFade =
        Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
          curve: widget.curve,
          parent: _animationController,
        ));

    Timer(widget.delayStart, () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}