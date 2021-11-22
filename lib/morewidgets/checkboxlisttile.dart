import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class checkboxlt extends StatefulWidget {
  @override
  _checkboxltState createState() => _checkboxltState();
}

class _checkboxltState extends State<checkboxlt> {
  List<String> _list = [];

  bool? _isFootBall = false;
  bool? _isCricket = false;
  bool? _isVolleyBall = false;
  bool? _isKabaddi = false;
  bool? _isBaseball = false;
  bool? _isBasketBall = false;
  bool? _isOther = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>checkboxlisttilecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("CheckBox List Tile",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                CheckboxListTile(
                  title: Text("FootBall"),
                  value: _isFootBall,
                  secondary: Icon(Icons.animation),
                  onChanged: (value) {
                    setState(() {
                      _isFootBall = value;
                      String selectVal = "FootBall";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Baseball"),
                  value: _isBaseball,
                  secondary: Icon(Icons.animation),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    setState(() {
                      _isBaseball = value;
                      String selectVal = "Baseball";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Cricket"),
                  value: _isCricket,
                  secondary: Icon(Icons.animation),
                  onChanged: (value) {
                    setState(() {
                      _isCricket = value;
                      String selectVal = "Cricket";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Kabaddi"),
                  value: _isKabaddi,
                  controlAffinity: ListTileControlAffinity.leading,
                  secondary: Icon(Icons.animation),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _isKabaddi = value;
                      String selectVal = "Kabaddi";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("BasketBall"),
                  value: _isBasketBall,
                  controlAffinity: ListTileControlAffinity.platform,
                  secondary: Icon(Icons.animation),
                  onChanged: (value) {
                    setState(() {
                      _isBasketBall = value;
                      String selectVal = "BasketBall";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("VolleyBall"),
                  value: _isVolleyBall,
                  secondary: Icon(Icons.animation),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.green,
                  checkColor: Colors.amber,
                  onChanged: (value) {
                    setState(() {
                      _isVolleyBall = value;
                      String selectVal = "VolleyBall";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Other Games"),
                  value: _isOther,
                  secondary: Icon(Icons.offline_bolt),
                  activeColor: Colors.red,
                  checkColor: Colors.yellow,
                  subtitle: Text("If any other than above"),
                  onChanged: (value) {
                    setState(() {
                      _isOther = value;
                      String selectVal = "Other Games";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    });
                  },
                ),
              ],
            ),
          ),
          Center(
              child: _list.isEmpty
                  ? Text("")
                  : RichText(
                  text: TextSpan(
                      text: "Selected Games:\n",
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: '${_list.toString()} ',
                            style: TextStyle(fontSize: 16)),
                      ]))),
        ],
      ),
    );
  }
}




class checkboxlisttilecode extends StatefulWidget {
  const checkboxlisttilecode({Key? key}) : super(key: key);
  @override
  _checkboxlisttilecodeState createState() => _checkboxlisttilecodeState();
}
class _checkboxlisttilecodeState extends State<checkboxlisttilecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/checkboxlt.txt');
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
          child: Center(child: Text("CheckBox List Tile",style: TextStyle(color: Colors.white),)
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