import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class slidetransition extends StatefulWidget {
  @override
  _slidetransitionState createState() => _slidetransitionState();
}

class _slidetransitionState extends State<slidetransition> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/sizetransition.txt');
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
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Slide Transition",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, SlideTransition1(SecondPage())),
                  child: Text('TAP TO VIEW SLIDE ANIMATION 1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
              MaterialButton(color: Colors.teal,
                  onPressed: () => Navigator.push(
                      context, SlideTransition2(SecondPage())),
                  child: Text('TAP TO VIEW SLIDE ANIMATION 2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,))),
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



class SlideTransition1 extends PageRouteBuilder {
  final Widget page;

  SlideTransition1(this.page)
      : super(
      pageBuilder: (context, animation, anotherAnimation) => page,
      transitionDuration: Duration(milliseconds: 1000),
      reverseTransitionDuration: Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        animation = CurvedAnimation(
            curve: Curves.fastLinearToSlowEaseIn,
            parent: animation,
            reverseCurve: Curves.fastOutSlowIn);
        return SlideTransition(
          position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
              .animate(animation),
          child: page,
        );
      });
}

class SlideTransition2 extends PageRouteBuilder {
  final Widget page;

  SlideTransition2(this.page)
      : super(
      pageBuilder: (context, animation, anotherAnimation) => page,
      transitionDuration: Duration(milliseconds: 1000),
      reverseTransitionDuration: Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        animation = CurvedAnimation(
            curve: Curves.fastLinearToSlowEaseIn,
            parent: animation,
            reverseCurve: Curves.fastOutSlowIn);
        return SlideTransition(
          position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
              .animate(animation),
          textDirection: TextDirection.rtl,
          child: page,
        );
      });
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
          child: Center(child: Text("Slide Transition",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}