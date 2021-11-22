import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class fadetransition extends StatefulWidget {
  @override
  _fadetransitionState createState() => _fadetransitionState();
}

class _fadetransitionState extends State<fadetransition> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/fadetransition.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Fade Transition",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
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
                    MaterialButton(color: Colors.teal,
                        onPressed: () => Navigator.push(context, FadeRoute1(SecondPage())),
                        child: Text('TAP TO VIEW FADE ANIMATION',style: TextStyle(color: Colors.white),)),
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
            ],
          ),
        ),
      ),
    );
  }
}


class FadeRoute1 extends PageRouteBuilder {
  final Widget page;

  FadeRoute1(this.page)
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: page,
        ),
  );
}


class FadeRoute2 extends PageRouteBuilder {
  final Widget page;

  FadeRoute2(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return FadeTransition(
        opacity: animation,
        child: page,
      );
    },
  );
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlatButton(color: Colors.teal,
        onPressed: () { Navigator.pop(context); },
        child: Text("Click me",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ),),
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.teal),
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text('Fade Transition',style: TextStyle(color: Colors.teal),),
      ),
    );
  }
}