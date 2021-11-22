import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class chanim extends StatefulWidget {
  @override
  _chanimState createState() => _chanimState();
}

class _chanimState extends State<chanim>
    with TickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/chanim.txt');
    setState(() {
      data=responseText;
    });
  }

  late Animation _heartAnimation;
  late AnimationController _heartAnimationController;

  bool isTapped = false;

  @override
  void initState() {
    super.initState();
    fetchFileData();
    _heartAnimationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1500),
        reverseDuration: Duration(milliseconds: 400));
    _heartAnimation = Tween(begin: 120.0, end: 170.0).animate(CurvedAnimation(
        curve: Curves.elasticOut,
        reverseCurve: Curves.ease,
        parent: _heartAnimationController));

    _heartAnimationController.addStatusListener(
          (AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _heartAnimationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _heartAnimationController.forward();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _heartAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Responsive Icon",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: secondChild(),
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

  Widget secondChild() {
    return AnimatedBuilder(
      animation: _heartAnimationController,
      builder: (context, child) {
        return Center(
          child: AnimatedBuilder(
            animation: _heartAnimationController,
            builder: (context, child) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite,
                        color: Colors.red, size: _heartAnimation.value),
                    Column(
                      children: [
                        FlatButton(color: Colors.teal,
                          onPressed: () => _heartAnimationController.forward(),
                          child: Text(
                            'Start beating',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        FlatButton(color: Colors.teal,
                          onPressed: () => _heartAnimationController.stop(),
                          child: Text(
                            'Stop beating',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}