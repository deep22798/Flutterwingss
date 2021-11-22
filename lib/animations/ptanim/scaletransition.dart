import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class scaletransition extends StatefulWidget {

  @override
  _scaletransitionState createState() => _scaletransitionState();
}

class _scaletransitionState extends State<scaletransition> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/scaletransition.txt');
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
          child: Center(child: Text("Scale Transition",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView( scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition1(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition2(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition3(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition4(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 4',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition5(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 5',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition6(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, ScaleTransition7(SecondPage())),
                  child: Text('TAP TO VIEW SCALE ANIMATION 7',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
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


class ScaleTransition1 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition1(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.bottomCenter,
        scale: animation,
        child: child,
      );
    },
  );
}

class ScaleTransition2 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition2(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.topCenter,
        scale: animation,
        child: child,
      );
    },
  );
}

class ScaleTransition3 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition3(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.bottomLeft,
        scale: animation,
        child: child,
      );
    },
  );
}

class ScaleTransition4 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition4(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.bottomRight,
        scale: animation,
        child: child,
      );
    },
  );
}

class ScaleTransition5 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition5(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.center,
        scale: animation,
        child: child,
      );
    },
  );
}

class ScaleTransition6 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition6(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.centerRight,
        scale: animation,
        child: child,
      );
    },
  );
}

class ScaleTransition7 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition7(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return ScaleTransition(
        alignment: Alignment.centerLeft,
        scale: animation,
        child: child,
      );
    },
  );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FlatButton(color: Colors.teal,onPressed: () { Navigator.pop(context); },
          child: Text("Click me",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
      ),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Scale Transition",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}