import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutterwings/animations/buttonanim/circularbutton.dart';

class circularfabbutton extends StatefulWidget {

  @override
  _circularfabbuttonState createState() => _circularfabbuttonState();
}

class _circularfabbuttonState extends State<circularfabbutton> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),
          title: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(child: Text("Cicular Fab Button Button",style: TextStyle(color: Colors.white),)),
          ),
          backgroundColor: Colors.teal,shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          color: Color(0xFF192A56),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    // The menu can be handled programatically using a key
                    if (fabKey.currentState!.isOpen) {
                      fabKey.currentState!.close();
                    } else {
                      fabKey.currentState!.open();
                    }
                  },
                  color: Colors.white,
                  child: Text('Toggle menu programatically', style: TextStyle(color: Colors.teal)),
                ),
                FlatButton(
                    color: Colors.white,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>circularfabbuttonma()));
                    }, child: Text("View Code",style: TextStyle(color: Colors.teal)))
              ],
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) => FabCircularMenu(
            key: fabKey,
            // Cannot be `Alignment.center`
            alignment: Alignment.bottomRight,
            ringColor: Colors.white.withAlpha(25),
            ringDiameter: 500.0,
            ringWidth: 150.0,
            fabSize: 64.0,
            fabElevation: 8.0,
            fabIconBorder: CircleBorder(),
            // Also can use specific color based on wether
            // the menu is open or not:
            // fabOpenColor: Colors.white
            // fabCloseColor: Colors.white
            // These properties take precedence over fabColor
            fabColor: Colors.white,
            fabOpenIcon: Icon(Icons.menu, color: primaryColor),
            fabCloseIcon: Icon(Icons.close, color: primaryColor),
            fabMargin: const EdgeInsets.all(16.0),
            animationDuration: const Duration(milliseconds: 800),
            animationCurve: Curves.easeInOutCirc,
            onDisplayChange: (isOpen) {
              _showSnackBar(context, "The menu is ${isOpen ? "open" : "closed"}");
            },
            children: <Widget>[
              RawMaterialButton(
                onPressed: () {
                  _showSnackBar(context, "You pressed 1");
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.looks_one, color: Colors.white),
              ),
              RawMaterialButton(
                onPressed: () {
                  _showSnackBar(context, "You pressed 2");
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.looks_two, color: Colors.white),
              ),
              RawMaterialButton(
                onPressed: () {
                  _showSnackBar(context, "You pressed 3");
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.looks_3, color: Colors.white),
              ),
              RawMaterialButton(
                onPressed: () {
                  _showSnackBar(context, "You pressed 4. This one closes the menu on tap");
                  fabKey.currentState!.close();
                },
                shape: CircleBorder(),
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.looks_4, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(milliseconds: 1000),
        )
    );
  }
}