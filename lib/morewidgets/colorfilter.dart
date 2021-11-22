
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class colorfiltr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>colorfiltercode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Color Filter",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlutterLogo(
                size: 75,
              ),
              ColorFiltered(
                colorFilter: ColorFilter.linearToSrgbGamma(),
                child: FlutterLogo(
                  size: 75,
                ),
              ),
              ColorFiltered(
                colorFilter: ColorFilter.srgbToLinearGamma(),
                child: FlutterLogo(
                  size: 75,
                ),
              ),
              ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.amber, BlendMode.modulate),
                child: FlutterLogo(
                  size: 75,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class colorfiltercode extends StatefulWidget {
  const colorfiltercode({Key? key}) : super(key: key);
  @override
  _colorfiltercodeState createState() => _colorfiltercodeState();
}

class _colorfiltercodeState extends State<colorfiltercode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/colorfiltr.txt');
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
          child: Center(child: Text("Color Filter",style: TextStyle(color: Colors.white),)),
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