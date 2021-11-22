import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class funtionlysizedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>fsizedboxcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Funtionly Sizedbox",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
                    widthFactor: 0.5,
                    child: Container(
                      color: Colors.yellow,
                      child: FractionallySizedBox(
                        heightFactor: 0.5,
                        widthFactor: 0.5,
                        child: Container(
                          color: Colors.green,
                          child: FractionallySizedBox(
                            heightFactor: 0.5,
                            widthFactor: 0.5,
                            child: Container(
                              color: Colors.red,
                              child: FractionallySizedBox(
                                heightFactor: 0.25,
                                widthFactor: 0.25,
                                child: Container(
                                  color: Colors.yellowAccent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                child: FractionallySizedBox(
                  heightFactor: 0.75,
                  widthFactor: 0.25,
                  child: Container(
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class fsizedboxcode extends StatefulWidget {
  const fsizedboxcode({Key? key}) : super(key: key);

  @override
  _fsizedboxcodeState createState() => _fsizedboxcodeState();
}

class _fsizedboxcodeState extends State<fsizedboxcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/funtionlysizedbox.txt');
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
          child: Center(child: Text("Funtionly Sizedbox",style: TextStyle(color: Colors.white),)),
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
