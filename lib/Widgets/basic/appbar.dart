import 'package:flutter/material.dart';
import 'package:flutterwings/Widgets/basic/appbar/widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart' show rootBundle;
class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);
  @override
  _appbarState createState() => _appbarState();
}
class _appbarState extends State<appbar> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/appbar.txt');
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
    String url="https://flutter.dev/";
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.transparent,backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("appbar",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(color: Colors.teal,
                    image: DecorationImage(image: AssetImage("assets/appbar.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),

              SizedBox(height: 20,),
              Text("AppBar class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                child: Text(
                  "An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations (sometimes called the overflow menu)."
                ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
               child: Text("App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height iconanimation at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use in a CustomScrollView."),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                child: Text("The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any). The bottom is usually used for a TabBar. If a flexibleSpace iconanimation is specified then it is stacked behind the toolbar and the bottom iconanimation. The following diagram shows where each of these slots appears in the toolbar when the writing language is left-to-right (e.g. English):"),
                )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
              child: Text("The AppBar insets its content based on the ambient MediaQuery's padding, to avoid system UI intrusions. It's taken care of by Scaffold when used in the Scaffold.appBar property. When animating an AppBar, unexpected MediaQuery changes (as is common in Hero loopanimations) may cause the content to suddenly jump. Wrap the AppBar in a MediaQuery iconanimation, and adjust its padding such that the animation is smooth.",)  )
                ),
              Container(
                height: 200,width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/app_barwid.png")),
                  color: Colors.white
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Source Codes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      MaterialButton(
                        color: Colors.teal,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>appbarwidget()));
                        },
                      child: Text("Run",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),)
                    ],
                  )),
              SizedBox(height: 20,),
              SelectableText(data)
            ],
          ),
        ),
      ),
    );
  }
}