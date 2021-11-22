import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class inputchip extends StatefulWidget {
  @override
  _inputchipState createState() => new _inputchipState();
}

class _inputchipState extends State<inputchip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>inputchipcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Input Chip",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Center(
          child: InputChip(
            label: Text(isSelected ? "Selected" : "Select"),
            labelStyle: TextStyle(color: Colors.white),
            backgroundColor: Colors.red,
            onSelected: (bool value) {
              setState(() {
                isSelected = value;
              });
            },
            deleteIcon: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
            onDeleted: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Delete clicked",
                  ),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            selected: isSelected,
            selectedColor: Colors.green,
          ),
        ),
      ),
    );
  }
}






class inputchipcode extends StatefulWidget {
  const inputchipcode({Key? key}) : super(key: key);
  @override
  _inputchipcodeState createState() => _inputchipcodeState();
}
class _inputchipcodeState extends State<inputchipcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/inputchip.txt');
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
          child: Center(child: Text("Input Chip",style: TextStyle(color: Colors.white),)
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