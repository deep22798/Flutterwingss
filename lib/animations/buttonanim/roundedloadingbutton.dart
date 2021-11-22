// import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:rounded_loading_button/rounded_loading_button.dart';
//
// class roundedloadingbutton extends StatefulWidget {
//   @override
//   _roundedloadingbuttonState createState() => _roundedloadingbuttonState();
// }
//
// class _roundedloadingbuttonState extends State<roundedloadingbutton> {
//   String data="";
//   fetchFileData()async{
//     String responseText;
//     responseText =await rootBundle.loadString('text/roundedlb.txt');
//     setState(() {
//       data=responseText;
//     });
//   }
//   @override
//   void initState() {
//     fetchFileData();
//     // TODO: implement initState
//     super.initState();
//   }
//   final RoundedLoadingButtonController _btnController =
//   new RoundedLoadingButtonController();
//
//   void _doSomething() async {
//     Timer(
//       Duration(seconds: 3),
//           () {
//         _btnController.success();
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(right: 30),
//           child: Center(child: Text("Rounded Loading Button",style: TextStyle(color: Colors.white),)),
//         ),
//         backgroundColor: Colors.teal,shadowColor: Colors.transparent,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               Center(
//                 child: RoundedLoadingButton(
//                   child: Text('Tap me!', style: TextStyle(color: Colors.white)),
//                   controller: _btnController,
//                   onPressed: _doSomething,
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Align(alignment: Alignment.topLeft,
//                     child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
//               ),
//               SizedBox(height: 20,),
//               SelectableText(data)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }