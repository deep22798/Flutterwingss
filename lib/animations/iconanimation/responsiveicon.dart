// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:tweener/tweener.dart';
// class responsiveicon extends StatefulWidget {
//   @override
//   _responsiveiconState createState() => _responsiveiconState();
// }
//
// class _responsiveiconState extends State<responsiveicon> {
//   String data="";
//   fetchFileData()async{
//     String responseText;
//     responseText =await rootBundle.loadString('text/responsiveicon.txt');
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
//   double _counter = 0;
//
//   bool tap = true;
//   bool show = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       appBar: AppBar(iconTheme: IconThemeData(color: Colors.teal),
//         backgroundColor: Colors.white,shadowColor: Colors.transparent,
//         title: Padding(
//           padding: const EdgeInsets.only(right: 50),
//           child: Center(child: Text("Responsive Icon",style: TextStyle(color: Colors.teal),)),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               Center(
//                 child: InkWell(
//                   highlightColor: Colors.transparent,
//                   splashColor: Colors.transparent,
//                   onHighlightChanged: (value) {
//                     tap = !value;
//                     show = false;
//                     if (tap == true) {
//                       Tweener({'x': 30})
//                           .to({'x': 50}, 500)
//                           .easing(Ease.linear.easeIn)
//                           .onUpdate((obj) {
//                         setState(() {
//                           _counter = (obj['x']).round() * 1.0;
//                         });
//                       })
//                           .onComplete((obj) {})
//                           .start();
//                     } else {
//                       Tweener(
//                         {'x': 50},
//                       )
//                           .to({'x': 30}, 200)
//                           .easing(Ease.linear.easeIn)
//                           .onUpdate((obj) {
//                         setState(() {
//                           _counter = (obj['x']).round() * 1.0;
//                         });
//                       })
//                           .onComplete((obj) {})
//                           .start();
//                     }
//                   },
//                   onTap: () {
//                     show = false;
//                   },
//                   child: AnimatedContainer(
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     duration: Duration(milliseconds: 1500),
//                     height: tap ? 100 : 70,
//                     width: tap ? 100 : 70,
//                     decoration: BoxDecoration(
//                         color: Color(0xFFFF5757),
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                               color: Color(0xFFFF5757).withOpacity(0.5),
//                               offset: Offset(0, 5),
//                               blurRadius: 30)
//                         ]),
//                     child: Icon(
//                       Icons.favorite,
//                       color: Colors.white,
//                       size: show ? 50 : _counter,
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