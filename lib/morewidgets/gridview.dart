import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterwings/morewidgets/gridviewcode.dart';

class gridd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>gridviewcodes()));
          },child: Text("Codes"),backgroundColor: Colors.teal,),
          appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
            title: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Center(child: Text("GridView",style: TextStyle(color: Colors.white),)),
            ),
          ),
          body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: List<Widget>.generate(
                16,
                    (index) {
                  return GridTile(
                    child: Card(
                      color:
                      Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                          .withOpacity(1.0),
                    ),
                  );
                },
              )),
        ));
  }
}