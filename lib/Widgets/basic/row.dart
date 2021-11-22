import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
class row extends StatefulWidget {
  const row({Key? key}) : super(key: key);

  @override
  _rowState createState() => _rowState();
}

class _rowState extends State<row> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/columnwid.txt');
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
          child: Center(child: Text("row",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage("assets/row.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),
              SizedBox(height: 20,),
              Text("Row class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("A iconanimation that displays its children in a horizontal array."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("To cause a child to expand to fill the available horizontal space, wrap the child in an Expanded iconanimation."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("The Row iconanimation does not scroll (and in general it is considered an error to have more children in a Row than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("For a vertical variant, see Column."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("If you only have one child, then consider using Align or Center to position the child."),)),
              SizedBox(height:10),




              Card(elevation: 5,
                child: Container(
                  height: 200,width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/rowwid.png")),
                      color: Colors.white
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Source Codes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
