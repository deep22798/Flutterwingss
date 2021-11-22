import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class actionchip extends StatefulWidget {
  @override
  _actionchipState createState() => _actionchipState();
}

class _actionchipState extends State<actionchip> {
  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "Clicked",
      ),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>actionchipcodee()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Action Chip",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ActionChip(
              label: Text('Action Chip'),
              onPressed: () {
                showSnackBar(context);
              }),
          ActionChip(
              label: Text('Action Chip having tooltip'),
              tooltip: 'This is tooltip',
              onPressed: () {
                showSnackBar(context);
              }),
          ActionChip(
              label: Text('Action Chip with icon'),
              avatar: Icon(Icons.accessibility_outlined),
              onPressed: () {
                showSnackBar(context);
              }),
          ActionChip(
              label: Text('Action Chip with custom color'),
              labelStyle: TextStyle(color: Colors.white),
              avatar: Icon(Icons.color_lens_outlined, color: Colors.white),
              backgroundColor: Colors.deepPurple,
              onPressed: () {
                showSnackBar(context);
              }),
          ActionChip(
              label: Text('Action Chip with Elevation'),
              avatar: Icon(Icons.ac_unit_outlined),
              elevation: 10,
              pressElevation: 5,
              shadowColor: Colors.teal,
              onPressed: () {
                showSnackBar(context);
              })
        ],
      ),
    );
  }
}



class actionchipcodee extends StatefulWidget {
  const actionchipcodee({Key? key}) : super(key: key);
  @override
  _actionchipcodeeState createState() => _actionchipcodeeState();
}
class _actionchipcodeeState extends State<actionchipcodee> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/actionchip.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Action Chip",style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
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
    );
  }
}