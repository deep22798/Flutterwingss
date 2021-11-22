import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transparent_image/transparent_image.dart';

class fdinimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>fadeinimagecode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Fade in image",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Image from Network"),
            ),
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              height: MediaQuery.of(context).size.height / 3,
              fadeInDuration: Duration(seconds: 2),
              image:
              'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png',
            ),
            FadeInImage.assetNetwork(
              height: MediaQuery.of(context).size.height / 3,
              fadeInDuration: Duration(seconds: 5),
              fadeInCurve: Curves.bounceIn,
              image:
              'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png',
              placeholder: 'image/loading.gif',
            ),
          ],
        ),
      ),
    );
  }
}



class fadeinimagecode extends StatefulWidget {
  const fadeinimagecode({Key? key}) : super(key: key);

  @override
  _fadeinimagecodeState createState() => _fadeinimagecodeState();
}

class _fadeinimagecodeState extends State<fadeinimagecode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/fdinimage.txt');
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
          child: Center(child: Text("Fade in Image",style: TextStyle(color: Colors.white),)),
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