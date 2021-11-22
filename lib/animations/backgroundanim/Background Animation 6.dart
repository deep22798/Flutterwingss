// import 'package:flutter/material.dart';
// import 'package:flutterwings/animations/backgroundanim/bg3m.dart';
// import 'package:particles_flutter/particles_flutter.dart';
//
// class bganim6 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(right: 30),
//           child: Center(child: Text("Backgroud Animation 4",style: TextStyle(color: Colors.white),)),
//         ),
//         backgroundColor: Colors.teal,shadowColor: Colors.transparent,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       backgroundColor: Color(0xff437BFF),
//       body: Stack(
//         children: [
//           CircularParticle(
//             width: w,
//             height: h,
//             particleColor: Colors.white.withOpacity(.6),
//             numberOfParticles: 150,
//             speedOfParticles: 1.5,
//             maxParticleSize: 7,
//             awayRadius: 0,
//             onTapAnimation: false,
//             isRandSize: true,
//             isRandomColor: false,
//             connectDots: false,
//             enableHover: false,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: InkWell( splashColor:Colors.white,onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>bg3m()));
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