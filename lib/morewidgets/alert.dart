import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class alerts extends StatefulWidget {
  @override
  _alertsState createState() => _alertsState();
}

class _alertsState extends State<alerts> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/alerts.txt');
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

    //Function to Show SnackBar on dialog dismiss

    void _showSnackBar(String text, String ans) {
      final snackBar = SnackBar(
          duration: Duration(milliseconds: 500),
          backgroundColor:
          ans.compareTo("Yes") == 0 ? Colors.green : Colors.red,
          content: Row(
            children: <Widget>[
              Icon(
                ans.compareTo("Yes") == 0 ? Icons.favorite : Icons.watch_later,
                color: ans.compareTo("Yes") == 0 ? Colors.pink : Colors.yellow,
                size: 24.0,
                semanticLabel: text,
              ),
              Text(text)
            ],
          ));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    // Simple Dialog

    Future<void> _simpleDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('Simple Dialog, Is it nice?'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    Future<void> _alertDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text('Is it nice?'),
              title: Text('Alert Dialog'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    void _timerDialog() {
      DateTime now = DateTime.now();
      showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: now.hour, minute: now.minute))
          .then((onValue) {
        _showSnackBar(onValue!.format(context), "ok");
      });
    }

    void _datePickerDialog() {
      DateTime now = DateTime.now();
      showDatePicker(
          context: context,
          initialDate: now,
          firstDate: DateTime(2000),
          lastDate: DateTime(2050))
          .then((onValue) {
        _showSnackBar('$onValue', "ok");
      });
    }

    Future<void> _cupertinoDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Welcome'),
              content: Text("Cupertino Dialog, Is it nice?"),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }



    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Alert",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Simple Dialog'),
                  onPressed: _simpleDialog,
                ),
                ElevatedButton(
                  child: Text('Alert Dialog'),
                  onPressed: _alertDialog,
                ),
                ElevatedButton(
                  child: Text('Date Picker Dialog'),
                  onPressed: _datePickerDialog,
                ),
                ElevatedButton(
                  child: Text('Timer Picker Dialog'),
                  onPressed: _timerDialog,
                ),
                ElevatedButton(
                  child: Text('Cupertino Dialog'),
                  onPressed: _cupertinoDialog,
                ),

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