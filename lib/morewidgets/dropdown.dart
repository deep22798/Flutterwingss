import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class drpdwn extends StatefulWidget {
  @override
  _drpdwnState createState() => _drpdwnState();
}

class _drpdwnState extends State<drpdwn> {
  String? dropdownValue = 'Green';
  List<String> dropdownItems = <String>[
    'Green',
    'Red',
    'Yellow',
    'Blue',
    "Pink",
    "Orange"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>dropcodes()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("DropDown",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        color: _getColor(dropdownValue!),
        child: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            elevation: 8,
            style: TextStyle(color: Colors.deepPurple, fontSize: 36),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Color _getColor(String _color) {
    if (_color.compareTo("Green") == 0) {
      return Colors.green;
    } else if (_color.compareTo("Red") == 0) {
      return Colors.red;
    } else if (_color.compareTo("Yellow") == 0) {
      return Colors.yellow;
    } else if (_color.compareTo("Pink") == 0) {
      return Colors.pink;
    } else if (_color.compareTo("Orange") == 0) {
      return Colors.orange;
    } else if (_color.compareTo("Blue") == 0) {
      return Colors.blue;
    } else {
      return Colors.white;
    }
  }
}





class dropcodes extends StatefulWidget {
  const dropcodes({Key? key}) : super(key: key);

  @override
  _dropcodesState createState() => _dropcodesState();
}

class _dropcodesState extends State<dropcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/drpdwn.txt');
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
          child: Center(child: Text("DropDown",style: TextStyle(color: Colors.white),)),
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
