import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutterwings/Widgets/basic/scaffold/scaffoldwid.dart';
class scaffold extends StatefulWidget {
  const scaffold({Key? key}) : super(key: key);

  @override
  _scaffoldState createState() => _scaffoldState();
}
class _scaffoldState extends State<scaffold> {
  String scaff="";
  fetchFileDat()async{
    String responsText;
    responsText =await rootBundle.loadString('text/scaffold.txt');
    setState(() {
      scaff=responsText;
    });
  }
  @override
  void initState() {
    fetchFileDat();
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
          child: Center(child: Text("Scaffold",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage("assets/scaffold.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),
              SizedBox(height: 20,),
              Text("Scaffold class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                child: Text("Implements the basic material design visual layout structure."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                   child: Text("This class provides APIs for showing drawers and bottom sheets."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                  child: Text("To display a persistent bottom sheet, obtain the ScaffoldState for the current BuildContext via Scaffold.of and use the ScaffoldState.showBottomSheet function."),)),
              SizedBox(height:10),
              Container(
                height: 200,width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/scaffoldwid.png")),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>scaffoldwid()));
                        },
                        child: Text("Run",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),)
                    ],
                  )),
              SizedBox(height: 20,),
              SelectableText(scaff)

            ],
          ),
        ),
      ),
    );
  }
}
