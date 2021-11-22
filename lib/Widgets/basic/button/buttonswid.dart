import 'package:flutter/material.dart';
import 'package:flutterwings/Widgets/basic/text.dart';
/// This is the stateful iconanimation that the main application instantiates.
class buttonwid extends StatefulWidget {
  const buttonwid({Key? key}) : super(key: key);

  @override
  State<buttonwid> createState() => _buttonwidState();
}

/// This is the private State class that goes with buttonwid.
class _buttonwidState extends State<buttonwid> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.teal),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // ElevatedButton(
            //   style: style,
            //   onPressed: null,
            //   child: const Text('Disabled'),
            // ),
            const SizedBox(height: 30),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('click me',style: TextStyle(color: Colors.white,fontSize: 20),),color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
