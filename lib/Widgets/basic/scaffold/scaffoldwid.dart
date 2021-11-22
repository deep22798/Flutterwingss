import 'package:flutter/material.dart';


/// This is the stateful iconanimation that the main application instantiates.
class scaffoldwid extends StatefulWidget {
  const scaffoldwid({Key? key}) : super(key: key);

  @override
  State<scaffoldwid> createState() => _scaffoldwidState();
}

/// This is the private State class that goes with scaffoldwid.
class _scaffoldwidState extends State<scaffoldwid> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
