import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class animatedswitch extends StatefulWidget {
  @override
  _animatedswitchState createState() => _animatedswitchState();
}

class _animatedswitchState extends State<animatedswitch>
    with TickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/animatedswitch.txt');
    setState(() {
      data=responseText;
    });
  }
  bool isChecked = false;
  Duration _duration = Duration(milliseconds: 370);
  late Animation<Alignment> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    fetchFileData();
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _duration);
    _animation =
        AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
            .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Swatch",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Center(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          setState(
                                () {
                              if (_animationController.isCompleted) {
                                _animationController.reverse();
                              } else {
                                _animationController.forward();
                              }
                              isChecked = !isChecked;
                            },
                          );
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                          decoration: BoxDecoration(
                            color: isChecked ? Colors.green : Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(99),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: isChecked
                                    ? Colors.green.withOpacity(0.6)
                                    : Colors.red.withOpacity(0.6),
                                blurRadius: 15,
                                offset: Offset(0, 8),
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: _animation.value,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(
                                          () {
                                        if (_animationController.isCompleted) {
                                          _animationController.reverse();
                                        } else {
                                          _animationController.forward();
                                        }
                                        isChecked = !isChecked;
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
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