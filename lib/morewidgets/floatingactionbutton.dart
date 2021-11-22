import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum POSITIONS { endDocked, centerFloat, endFloat, centerDocked }

class floatingactionbtn extends StatefulWidget {
  @override
  _floatingactionbtnState createState() => _floatingactionbtnState();
}

class _floatingactionbtnState extends State<floatingactionbtn> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  POSITIONS? _character = POSITIONS.centerDocked;
  bool? _isNotched = false;
  bool? _isMini = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Floating Action Button",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            title: Text("Mini"),
            leading: Checkbox(
              value: _isMini,
              onChanged: (bool) => {
                setState(() {
                  _isMini = bool;
                })
              },
            ),
          ),
          ListTile(
            title: Text("Bottom Notch"),
            leading: Checkbox(
              value: _isNotched,
              onChanged: (bool) => {
                setState(() {
                  _isNotched = bool;
                })
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Center Docked"),
            leading: Radio(
              value: POSITIONS.centerDocked,
              groupValue: _character,
              onChanged: (POSITIONS? value) {
                setState(() {
                  _character = value;
                  _fabLocation = FloatingActionButtonLocation.centerDocked;
                });
              },
            ),
          ),
          ListTile(
            title: Text("End Docked"),
            leading: Radio(
              value: POSITIONS.endDocked,
              groupValue: _character,
              onChanged: (POSITIONS? value) {
                setState(() {
                  _character = value;
                  _fabLocation = FloatingActionButtonLocation.endDocked;
                });
              },
            ),
          ),
          ListTile(
            title: Text("End Float"),
            leading: Radio(
              value: POSITIONS.endFloat,
              groupValue: _character,
              onChanged: (POSITIONS? value) {
                setState(() {
                  _character = value;
                  _fabLocation = FloatingActionButtonLocation.endFloat;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Center Float"),
            leading: Radio(
              value: POSITIONS.centerFloat,
              groupValue: _character,
              onChanged: (POSITIONS? value) {
                setState(() {
                  _character = value;
                  _fabLocation = FloatingActionButtonLocation.centerFloat;
                });
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), mini: this._isMini!, onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (context)=>floatingbttncode()))
    }),
      floatingActionButtonLocation: this._fabLocation,
      bottomNavigationBar: BottomAppBar(
        shape: _isNotched! ? CircularNotchedRectangle() : null,
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}





class floatingbttncode extends StatefulWidget {
  const floatingbttncode({Key? key}) : super(key: key);

  @override
  _floatingbttncodeState createState() => _floatingbttncodeState();
}

class _floatingbttncodeState extends State<floatingbttncode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/floatingactionbtn.txt');
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
          child: Center(child: Text("Floating Action Button",style: TextStyle(color: Colors.white),)),
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
