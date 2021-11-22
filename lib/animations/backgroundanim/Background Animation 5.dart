// import 'package:flutter/material.dart';
// import 'package:flutterwings/animations/backgroundanim/bg2m.dart';
// import 'package:particles_flutter/particles_flutter.dart';
//
// import 'bg1m.dart';
//
// class bganim5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(right: 30),
//           child: Center(child: Text("Backgroud Animation 3",style: TextStyle(color: Colors.white),)),
//         ),
//         backgroundColor: Colors.teal,shadowColor: Colors.transparent,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       backgroundColor: Colors.red,
//       body: Stack(
//         children: [
//           CircularParticle(
//             width: w,
//             height: h,
//             awayRadius: w / 5,
//             numberOfParticles: 150,
//             speedOfParticles: 1.5,
//             maxParticleSize: 7,
//             particleColor: Colors.white.withOpacity(.7),
//             awayAnimationDuration: Duration(milliseconds: 600),
//             awayAnimationCurve: Curves.easeInOutBack,
//             onTapAnimation: true,
//             isRandSize: true,
//             isRandomColor: false,
//             connectDots: true,
//             // randColorList: [
//             // Colors.red.withAlpha(210),
//             // Colors.white.withAlpha(210),
//             // Colors.yellow.withAlpha(210),
//             // Colors.green.withAlpha(210),
//             // ],
//             enableHover: true,
//             hoverColor: Colors.black,
//             hoverRadius: 90,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: InkWell( splashColor:Colors.white,onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>bg2m()));
//               },
//                 child: Container(
//                   decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(25)),
//                   height: 40,width: 120,child: Center(child: Text("View Codes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),),
//               ),),
//           )
//         ],
//       ),
//     );
//   }
// }