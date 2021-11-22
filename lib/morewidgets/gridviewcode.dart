import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class gridviewcodes extends StatefulWidget {
  const gridviewcodes({Key? key}) : super(key: key);

  @override
  _gridviewcodesState createState() => _gridviewcodesState();
}

class _gridviewcodesState extends State<gridviewcodes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/gridd.txt');
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
          child: Center(child: Text("GridView",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
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
    );
  }
}
