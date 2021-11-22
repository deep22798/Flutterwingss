import 'package:flutter/material.dart';

class decobox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.blue,
              Colors.yellowAccent,
            ],
          ),
        ),
      ),
    );
  }
}