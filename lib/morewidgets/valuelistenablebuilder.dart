import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class valuelistenablebuilder extends StatelessWidget {
  final ValueNotifier<int> _counter = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>valuelbuilderrcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Value Listenable Builder",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _counter.value = 1;
                    },
                    child: Text("x1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _counter.value = 2;
                    },
                    child: Text("x2"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _counter.value = 3;
                    },
                    child: Text("x3"),
                  ),
                ],
              ),
              ValueListenableBuilder(
                builder: (BuildContext context, int value, Widget? child) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: child,
                      ),
                      Column(
                        children: List.generate(
                            10,
                                (index) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "$value * $index = " +
                                    (value * index).toString(),
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                            )),
                      ),
                    ],
                  );
                },
                valueListenable: _counter,
                child: Center(
                    child: Text(
                      "Tables",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class valuelbuilderrcode extends StatefulWidget {
  const valuelbuilderrcode({Key? key}) : super(key: key);
  @override
  _valuelbuilderrcodeState createState() => _valuelbuilderrcodeState();
}
class _valuelbuilderrcodeState extends State<valuelbuilderrcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/valuelistenablebuilder.txt');
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
          child: Center(child: Text("Value Listenable Builder",style: TextStyle(color: Colors.white),)
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