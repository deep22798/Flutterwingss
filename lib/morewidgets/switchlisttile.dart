import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class switchlt extends StatefulWidget {
  @override
  _switchltState createState() => _switchltState();
}

class _switchltState extends State<switchlt> {
  bool _isSwitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>switchlisttilecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Switch List Tile",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        color: _isSwitchedOn ? Colors.amber : Colors.white,
        child: Center(
          child: SwitchListTile(
            title:
            Text(_isSwitchedOn ? 'Color Switched ON' : "Color Switched OFF"),
            value: _isSwitchedOn,
            onChanged: (bool value) {
              setState(() {
                _isSwitchedOn = value;
              });
            },
            subtitle: Text(_isSwitchedOn ? "Yellow Color" : "White Color"),
            secondary: const Icon(Icons.color_lens),
          ),
        ),
      ),
    );
  }
}







class switchlisttilecode extends StatefulWidget {
  const switchlisttilecode({Key? key}) : super(key: key);
  @override
  _switchlisttilecodeState createState() => _switchlisttilecodeState();
}
class _switchlisttilecodeState extends State<switchlisttilecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/switchlt.txt');
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
          child: Center(child: Text("Switch List Tile",style: TextStyle(color: Colors.white),)
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