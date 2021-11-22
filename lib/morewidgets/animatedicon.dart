import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class animicon extends StatefulWidget {
  @override
  _animiconState createState() => _animiconState();
}

class _animiconState extends State<animicon>
    with SingleTickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/animicon.txt');
    setState(() {
      data=responseText;
    });
  }
  late AnimationController _animationController;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated Icons",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Click below buttons"),
                  IconButton(
                    iconSize: 50,
                    tooltip: "play_pause",
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: _animationController,
                      color: Colors.lightBlue,
                    ),
                    onPressed: () => _handleOnPressed(),
                  ),
                  IconButton(
                    iconSize: 50,
                    tooltip: "add_event",
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.add_event,
                      progress: _animationController,
                      color: Colors.green,
                    ),
                    onPressed: () => _handleOnPressed(),
                  ),
                  IconButton(
                    iconSize: 50,
                    tooltip: "arrow_menu",
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu,
                      progress: _animationController,
                      color: Colors.lightBlue,
                    ),
                    onPressed: () => _handleOnPressed(),
                  ),
                  IconButton(
                    iconSize: 50,
                    tooltip: 'ellipsis_search',
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.ellipsis_search,
                      progress: _animationController,
                      color: Colors.red,
                    ),
                    onPressed: () => _handleOnPressed(),
                  ),
                  IconButton(
                    iconSize: 50,
                    tooltip: "list_view",
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.list_view,
                      progress: _animationController,
                    ),
                    onPressed: () => _handleOnPressed(),
                  ),
                  IconButton(
                    iconSize: 50,
                    tooltip: "home_menu",
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.home_menu,
                      progress: _animationController,
                      color: Colors.pink,
                    ),
                    onPressed: () => _handleOnPressed(),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                  SizedBox(height: 20,),
                  SelectableText(data),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }
}