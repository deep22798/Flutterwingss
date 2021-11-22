import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mediaqury extends StatefulWidget {
  @override
  _mediaquryState createState() => _mediaquryState();
}

class _mediaquryState extends State<mediaqury> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>mediaqucode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Media Query",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Device Information:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
              Text(
                "Orientation : " + MediaQuery.of(context).orientation.toString(),
              ),
              Text(
                "Size(w,h) : " + MediaQuery.of(context).size.toString(),
              ),
              Text(
                "Pixel Ratio : " +
                    MediaQuery.of(context).devicePixelRatio.toString(),
              ),
              Text(
                "Platform Brightness : " +
                    MediaQuery.of(context).platformBrightness.toString(),
              ),
              Text(
                "Device padding : " + MediaQuery.of(context).padding.toString(),
              ),
              Text(
                "Navigation Mode : " +
                    MediaQuery.of(context).navigationMode.toString(),
              ),
              Text(
                "Navigation Mode : " +
                    MediaQuery.of(context).navigationMode.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class mediaqucode extends StatefulWidget {
  const mediaqucode({Key? key}) : super(key: key);
  @override
  _mediaqucodeState createState() => _mediaqucodeState();
}

class _mediaqucodeState extends State<mediaqucode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/mediaqury.txt');
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
          child: Center(child: Text("Media Query",style: TextStyle(color: Colors.white),)),
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
