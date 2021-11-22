import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class animlistt extends StatefulWidget {
  @override
  animlisttState createState() {
    return new animlisttState();
  }
}

class animlisttState extends State<animlistt> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  List<String> _data = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>animatedlistcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Animated List",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _data.length,
              itemBuilder: (context, index, animation) =>
                  _buildItem(context, _data[index], animation),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  _addAnItem();
                },
              ),
              ElevatedButton(
                child: Text(
                  'Remove',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  _removeLastItem();
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem(
      BuildContext context, String item, Animation<double> animation) {
    TextStyle textStyle = new TextStyle(fontSize: 20);

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.vertical,
        child: SizedBox(
          height: 50.0,
          child: Card(
            child: Center(
              child: Text(item, style: textStyle),
            ),
          ),
        ),
      ),
    );
  }

  void _addAnItem() {
    _data.insert(0, "Inserted Item");
    _listKey.currentState!.insertItem(0);
  }

  void _removeLastItem() {
    String itemToRemove = _data[0];

    _listKey.currentState!.removeItem(
      0,
          (BuildContext context, Animation<double> animation) =>
          _buildItem(context, itemToRemove, animation),
      duration: const Duration(milliseconds: 250),
    );

    _data.removeAt(0);
  }
}


class animatedlistcode extends StatefulWidget {
  const animatedlistcode({Key? key}) : super(key: key);

  @override
  _animatedlistcodeState createState() => _animatedlistcodeState();
}

class _animatedlistcodeState extends State<animatedlistcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/animlistt.txt');
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
          child: Center(child: Text("Animated List",style: TextStyle(color: Colors.white),)),
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