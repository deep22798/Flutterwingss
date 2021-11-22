// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_tindercard/flutter_tindercard.dart';
//
// class tindercards extends StatefulWidget {
//   @override
//   _tindercardsState createState() => _tindercardsState();
// }
//
// class _tindercardsState extends State<tindercards>
//     with TickerProviderStateMixin {
//   String data="";
//   fetchFileData()async{
//     String responseText;
//     responseText =await rootBundle.loadString('text/tindercards.txt');
//     setState(() {
//       data=responseText;
//     });
//   }
//   @override
//   void initState() {
//     fetchFileData();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double _width = MediaQuery.of(context).size.width;
//     CardController controller; //Use this to trigger swap.
//     return Scaffold(
//       appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Colors.teal,shadowColor: Colors.transparent,
//         title: Padding(
//           padding: const EdgeInsets.only(right: 50),
//           child: Center(child: Text("Tinder Cards",style: TextStyle(color: Colors.white),)),
//         ),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Container(
//                   height: _width * 1.1,
//                   child: TinderSwapCard(
//                     swipeUp: true,
//                     swipeDown: true,
//                     orientation: AmassOrientation.BOTTOM,
//                     totalNum: 10,
//                     stackNum: 3,
//                     swipeEdge: 4,
//                     maxWidth: _width * .8,
//                     maxHeight: _width * .8,
//                     minWidth: _width * .6,
//                     minHeight: _width * .79,
//                     cardBuilder: (context, index) {
//                       return Container(
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                               colors: [Color(0xff3224AD), Color(0xffC26AD5)],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight),
//                           borderRadius: BorderRadius.circular(30),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(.15),
//                               offset: Offset(0, 5),
//                               blurRadius: 40,
//                             ),
//                           ],
//                         ),
//                         child: Text(
//                           'Swipe Anywhere...\nPage Index: ${index + 1}',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(.7),
//                             fontWeight: FontWeight.bold,
//                             fontSize: _width / 17,
//                           ),
//                         ),
//                       );
//                     },
//                     cardController: controller = CardController(),
//                     swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
//                       /// Get swiping card's alignment
//                       if (align.x < 0) {
//                         //Card is LEFT swiping
//                       } else if (align.x > 0) {
//                         //Card is RIGHT swiping
//                       }
//                     },
//                     swipeCompleteCallback:
//                         (CardSwipeOrientation orientation, int index) {
//                       /// Get orientation & index of swiped card!
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 30,),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Align(alignment: Alignment.topLeft,
//                       child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
//                 ),
//                 SizedBox(height: 20,),
//                 SelectableText(data)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// }