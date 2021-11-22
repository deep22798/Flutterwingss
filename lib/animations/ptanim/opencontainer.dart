import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class opencontainer extends StatefulWidget {
  @override
  _opencontainerState createState() => _opencontainerState();
}

class _opencontainerState extends State<opencontainer> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/opencontainer.txt');
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
          child: Center(child: Text("Open Container",style: TextStyle(color: Colors.white),)),
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
                child: OpenContainer(
                  closedBuilder: (_, openContainer) {
                    return Container(
                      height: 200,
                      width: 200,
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: openContainer,
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    );
                  },
                  openColor: Colors.white,
                  closedElevation: 50.0,
                  closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  closedColor: Colors.white,
                  openBuilder: (_, closeContainer) {
                    return Scaffold(
                      body: Center(
                        child: FlatButton(color: Colors.teal,onPressed: () { Navigator.pop(context); },
                        child: Text("Click me",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                      ),
                      appBar: AppBar(
                        title: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Center(child: Text("Open Container",style: TextStyle(color: Colors.white),)),
                        ),
                        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
                        iconTheme: IconThemeData(color: Colors.white),
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