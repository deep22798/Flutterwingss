import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutterwings/Widgets/basic/button/buttonswid.dart';
import 'package:url_launcher/url_launcher.dart';
class buttons extends StatefulWidget {
  const buttons({Key? key}) : super(key: key);

  @override
  _buttonsState createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/button.txt');
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
          child: Center(child: Text("buttons",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(color: Colors.teal,

                    image: DecorationImage(image: AssetImage("assets/button.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),

              Container(
                height: 200,width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/buttonwid.gif")),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>buttonwid()));
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
