// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:slimy_card/slimy_card.dart';
//
// class slimycards extends StatefulWidget {
//   @override
//   _slimycardsState createState() => _slimycardsState();
// }
//
// class _slimycardsState extends State<slimycards> {
//   String data="";
//   fetchFileData()async{
//     String responseText;
//     responseText =await rootBundle.loadString('text/slimycards.txt');
//     setState(() {
//       data=responseText;
//     });
//   }
//   @override
//   void initState() {
//     fetchFileData();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Colors.teal,shadowColor: Colors.transparent,
//         title: Padding(
//           padding: const EdgeInsets.only(right: 50),
//           child: Center(child: Text("Slimy Cards",style: TextStyle(color: Colors.white),)),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(scrollDirection: Axis.vertical,
//
//
//           child: Column(
//             children: [
//               SizedBox(height: 50),
//               SlimyCard(
//                 topCardWidget: topCardWidget(),
//                 bottomCardWidget: bottomCardWidget(),
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
//
//   // This widget will be passed as Top Card's Widget.
//   Widget topCardWidget() {
//     return Text(
//       'customize as you wish.',
//       style: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: Colors.white.withOpacity(.85),
//       ),
//     );
//   }
//
//   // This widget will be passed as Bottom Card's Widget.
//   Widget bottomCardWidget() {
//     return Text(
//       'customize as you wish.',
//       style: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: Colors.white.withOpacity(.85),
//       ),
//     );
//   }
// }