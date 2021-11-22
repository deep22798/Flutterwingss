import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class filtrchip extends StatefulWidget {
  @override
  _filtrchipState createState() => new _filtrchipState();
}

class _filtrchipState extends State<filtrchip> {
  var _dataList = [
    'Choice 1',
    'Choice 2',
    'Choice 3',
    'Choice 4',
    'Choice 5',
    'Choice 6',
    'Choice 7',
    'Choice 8'
  ];
  var selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>filterchipcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Filter Chip",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (BuildContext context, int index) => FilterChip(
          label: Text(_dataList[index]),
          onSelected: (bool value) {
            if (selected.contains(index)) {
              selected.remove(index);
            } else {
              selected.add(index);
            }
            setState(() {});
          },
          selected: selected.contains(index),
          selectedColor: Colors.deepOrange,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}






class filterchipcode extends StatefulWidget {
  const filterchipcode({Key? key}) : super(key: key);
  @override
  _filterchipcodeState createState() => _filterchipcodeState();
}
class _filterchipcodeState extends State<filterchipcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/filtrchip.txt');
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
          child: Center(child: Text("Filter Chip",style: TextStyle(color: Colors.white),)
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