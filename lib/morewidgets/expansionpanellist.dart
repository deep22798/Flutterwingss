import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class exppanellist extends StatefulWidget {
  @override
  _exppanellistState createState() => _exppanellistState();
}

class _exppanellistState extends State<exppanellist> {
  int index = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>expansionlstcode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Expansion Panel list Model",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ExpansionPanelList(
              expansionCallback: (i, isOpen) {
                setState(() {
                  if (index == i)
                    index = -1;
                  else
                    index = i;
                });
              },
              animationDuration: Duration(seconds: 1),
              dividerColor: Colors.teal,
              elevation: 2,
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text("Index 0 (Header Tap Enabled)"),
                    );
                  },
                  canTapOnHeader: true,
                  body: ListTile(
                    title: Text("Notes"),
                    subtitle: const Text('for index 0'),
                  ),
                  isExpanded: index == 0,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text("Index 1"),
                    );
                  },
                  body: ListTile(
                    title: Text("Notes"),
                    subtitle: const Text('for index 1'),
                  ),
                  isExpanded: index == 1,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text("Index 2 (Header Tap Enabled)"),
                    );
                  },
                  canTapOnHeader: true,
                  body: ListTile(
                    title: Text("Notes"),
                    subtitle: const Text('for index 2'),
                  ),
                  isExpanded: index == 2,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text("Index 3"),
                    );
                  },
                  body: ListTile(
                    title: Text("Notes"),
                    subtitle: const Text('for index 3'),
                  ),
                  isExpanded: index == 3,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text("Index 4"),
                    );
                  },
                  body: ListTile(
                    title: Text("Notes"),
                    subtitle: const Text('for index 4'),
                  ),
                  isExpanded: index == 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






class expansionlstcode extends StatefulWidget {
  const expansionlstcode({Key? key}) : super(key: key);
  @override
  _expansionlstcodeState createState() => _expansionlstcodeState();
}
class _expansionlstcodeState extends State<expansionlstcode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/exppanellist.txt');
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
          child: Center(child: Text("Expansion Panel list Model",style: TextStyle(color: Colors.white),)
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