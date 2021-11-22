import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
class bg2m extends StatefulWidget {
  const bg2m({Key? key}) : super(key: key);

  @override
  _bg2mState createState() => _bg2mState();
}

class _bg2mState extends State<bg2m> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/bganim5.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Center(child: Text("Backgroud Animation 3",style: TextStyle(color: Colors.white),)),
        ),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(alignment: Alignment.topLeft,
                  child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
            SizedBox(height: 20,),
            SelectableText(data),
          ],
        ),

      ),
    );
  }
}
