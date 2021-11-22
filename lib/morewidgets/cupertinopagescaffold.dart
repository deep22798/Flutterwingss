import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class cpsw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>cpscode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("CPS",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CupertinoApp(
          home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: CupertinoButton(
                padding: EdgeInsets.all(0.0),
                child: Icon(CupertinoIcons.back),
                onPressed: () {
                  // The demo is on the root navigator.
                  Navigator.of(context, rootNavigator: true).pop();
                },
              ),
              middle: Text('CupertinoApp'),
              trailing: CupertinoButton(
                padding: EdgeInsets.all(0.0),
                child: Icon(CupertinoIcons.settings),
                onPressed: () {
                  // The demo is on the root navigator.
                  showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: const Text('Hi'),
                      content: Text("This is Cupertino Dialog."),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(context, "Ok");
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'This is Cupertino Page Scaffold Widget',
                  style: TextStyle(color: Color.fromARGB(100, 500, 0, 0)),
                ),
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}




class cpscode extends StatefulWidget {
  const cpscode({Key? key}) : super(key: key);

  @override
  _cpscodeState createState() => _cpscodeState();
}

class _cpscodeState extends State<cpscode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/cpsw.txt');
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
          child: Center(child: Text("CPS",style: TextStyle(color: Colors.white),)),
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
