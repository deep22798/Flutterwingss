import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class builderr extends StatelessWidget {
  builderr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>builderrcode()));
        },child: Text("Codes"),backgroundColor: Colors.teal,),
        appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Center(child: Text("Builder",style: TextStyle(color: Colors.white),)),
          ),
        ),
        body: Builder(builder: (context) {
          return Container(
            child: Center(
              child: ElevatedButton(
                child: Text("Show Snackbar"),
                onPressed: () {
                  //Without the builder widget, the below code wont work, because of unavailability of builder context
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                      Text("SnackBar shown without using scaffold key"),
                    ),
                  );
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}

class builderrcode extends StatefulWidget {
  const builderrcode({Key? key}) : super(key: key);
  @override
  _builderrcodeState createState() => _builderrcodeState();
}
class _builderrcodeState extends State<builderrcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/builderr.txt');
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
          child: Center(child: Text("Builder",style: TextStyle(color: Colors.white),)
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