// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:slide_button/slide_button.dart';
//
// class draggablebutton extends StatefulWidget {
//   @override
//   _draggablebuttonState createState() => _draggablebuttonState();
// }
//
// class _draggablebuttonState extends State<draggablebutton> {
//   String data="";
//   fetchFileData()async{
//     String responseText;
//     responseText =await rootBundle.loadString('text/draggablebutton.txt');
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: CupertinoColors.white,
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(right: 30),
//           child: Center(child: Text("Slider Button",style: TextStyle(color: Colors.white),)),
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
//                 child: SlideButton(
//                   backgroundColor: Colors.black.withOpacity(0.2),
//                   height: 80,
//                   slidingBarColor: Colors.blue,
//                   isDraggable: true,
//                   shouldCloseBorders: true,
//                   slidingChild: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Icon(
//                         Icons.keyboard_arrow_right,
//                         color: Colors.white,
//                         size: 28,
//                       ),
//                       SizedBox(
//                         width: 20,
//                       )
//                     ],
//                   ),
//                   backgroundChild: Center(
//                     child: Text(
//                       'Draggable',
//                       style:
//                       TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 22),
//                     ),
//                   ),
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