// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:slider_button/slider_button.dart';
//
// class sliderbutton extends StatefulWidget {
//   @override
//   _sliderbuttonState createState() => _sliderbuttonState();
// }
//
// class _sliderbuttonState extends State<sliderbutton> {
//   String data="";
//   fetchFileData()async{
//     String responseText;
//     responseText =await rootBundle.loadString('text/slidderbutton.txt');
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
//                 child: SliderButton(
//                   action: () {
//                     ///Do something here
//                   },
//                   label: Text(
//                     'Slide to cancel Event',
//                     style: TextStyle(
//                         color: Color(0xff4a4a4a),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 17),
//                   ),
//                   icon: Text(
//                     'x',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 40,
//                     ),
//                   ),
//                   buttonColor: Colors.black,
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