import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class radiiolt extends StatefulWidget {
  @override
  _radiioltState createState() => _radiioltState();
}

class _radiioltState extends State<radiiolt> {
  Color? _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>radiolisttilecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Radio List Tile",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        color: _bgColor,
        child: Column(
          children: [
            Text(
              "\nSet background color\n",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RadioListTile<Color>(
              title: const Text('Green'),
              value: Colors.lightGreen,
              groupValue: _bgColor,
              onChanged: (Color? value) {
                setState(() {
                  _bgColor = value;
                });
              },
            ),
            RadioListTile<Color>(
              title: const Text('Yellow'),
              value: Colors.yellowAccent,
              groupValue: _bgColor,
              onChanged: (Color? value) {
                setState(() {
                  _bgColor = value;
                });
              },
            ),
            RadioListTile<Color>(
              title: const Text('Blue'),
              value: Colors.lightBlueAccent,
              groupValue: _bgColor,
              onChanged: (Color? value) {
                setState(() {
                  _bgColor = value;
                });
              },
            ),
            RadioListTile<Color>(
              title: const Text('Cyan'),
              value: Colors.cyanAccent,
              groupValue: _bgColor,
              onChanged: (Color? value) {
                setState(() {
                  _bgColor = value;
                });
              },
            ),
            RadioListTile<Color>(
              title: const Text('White'),
              value: Colors.white,
              groupValue: _bgColor,
              onChanged: (Color? value) {
                setState(() {
                  _bgColor = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}





class radiolisttilecode extends StatefulWidget {
  const radiolisttilecode({Key? key}) : super(key: key);
  @override
  _radiolisttilecodeState createState() => _radiolisttilecodeState();
}
class _radiolisttilecodeState extends State<radiolisttilecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/radiiolt.txt');
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
          child: Center(child: Text("Radio List Tile",style: TextStyle(color: Colors.white),)
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