import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class ttexpandwidget extends StatefulWidget {
  @override
  _ttexpandwidgetState createState() => _ttexpandwidgetState();
}

class _ttexpandwidgetState extends State<ttexpandwidget> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/ttexpandwidget.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  String TapToExpandIt = 'Tap to Expand it';
  String Sentence = 'Widgets that have global keys reparent their subtrees when'
      ' they are moved from one location in the tree to another location in the'
      ' tree. In order to reparent its subtree, a widget must arrive at its new'
      ' location in the tree in the same animation frame in which it was removed'
      ' from its old location the tree.'
      ' Widgets that have global keys reparent their subtrees when they are moved'
      ' from one location in the tree to another location in the tree. In order'
      ' to reparent its subtree, a widget must arrive at its new location in the'
      ' tree in the same animation frame in which it was removed from its old'
      ' location the tree.';
  bool isExpanded = true;
  bool isExpanded2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Tap to Expand Widget",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                margin: EdgeInsets.symmetric(
                  horizontal: isExpanded ? 25 : 0,
                  vertical: 20,
                ),
                padding: EdgeInsets.all(20),
                height: isExpanded ? 70 : 330,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 1200),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff6F12E8).withOpacity(0.5),
                      blurRadius: 20,
                      offset: Offset(5, 10),
                    ),
                  ],
                  color: Color(0xff6F12E8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(isExpanded ? 20 : 0),
                  ),
                ),
                child: SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TapToExpandIt,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            color: Colors.white,
                            size: 27,
                          ),
                        ],
                      ),
                      isExpanded ? SizedBox() : SizedBox(height: 20),
                      AnimatedCrossFade(
                        firstChild: Text(
                          '',
                          style: TextStyle(
                            fontSize: 0,
                          ),
                        ),
                        secondChild: Text(
                          Sentence,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.7,
                          ),
                        ),
                        crossFadeState: isExpanded
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 1200),
                        reverseDuration: Duration.zero,
                        sizeCurve: Curves.fastLinearToSlowEaseIn,
                      ),

                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  isExpanded2 = !isExpanded2;
                });
              },
              child: AnimatedContainer(
                margin: EdgeInsets.symmetric(
                  horizontal: isExpanded2 ? 25 : 0,
                  vertical: 20,
                ),
                padding: EdgeInsets.all(20),
                height: isExpanded2 ? 70 : 330,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 1200),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffFF5050).withOpacity(0.5),
                      blurRadius: 20,
                      offset: Offset(5, 10),
                    ),
                  ],
                  color: Color(0xffFF5050),
                  borderRadius: BorderRadius.all(
                    Radius.circular(isExpanded2 ? 20 : 0),
                  ),
                ),
                child: SingleChildScrollView(scrollDirection: Axis.vertical,

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TapToExpandIt,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            isExpanded2
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            color: Colors.white,
                            size: 27,
                          ),
                        ],
                      ),
                      isExpanded2 ? SizedBox() : SizedBox(height: 20),
                      AnimatedCrossFade(
                        firstChild: Text(
                          '',
                          style: TextStyle(
                            fontSize: 0,
                          ),
                        ),
                        secondChild: Text(
                          Sentence,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.7,
                          ),
                        ),
                        crossFadeState: isExpanded2
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 1200),
                        reverseDuration: Duration.zero,
                        sizeCurve: Curves.fastLinearToSlowEaseIn,
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
    );
  }
}