import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class animatedicon extends StatefulWidget {
  @override
  _animatediconState createState() => _animatediconState();
}

class _animatediconState extends State<animatedicon>
    with TickerProviderStateMixin {
  bool expanded = true;
  late AnimationController controller;

  @override
  void initState() {
    fetchFileData();
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 400),
    );
  }

  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/animatedicons.txt');
    setState(() {
      data=responseText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Icon",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.view_list, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.pause_play, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.menu_close, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.add_event, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.arrow_menu, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.close_menu, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.add_event, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.event_add, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.menu_arrow, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.play_pause, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.list_view, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.home_menu, progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                          icon: AnimatedIcon(
                              icon: AnimatedIcons.ellipsis_search,
                              progress: controller),
                          onPressed: () {
                            setState(() {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            });
                          }),
                      IconButton(
                        icon: AnimatedIcon(
                            icon: AnimatedIcons.search_ellipsis, progress: controller),
                        onPressed: () {
                          setState(
                                () {
                              expanded ? controller.forward() : controller.reverse();
                              expanded = !expanded;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              FlatButton(splashColor: Colors.white,
                  color: Colors.teal,
                  onPressed: (){
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
              } ,child:Text("Animate",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
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