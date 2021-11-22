// import 'package:flutter/material.dart';
// import 'package:flutter_particles/particles.dart';
// import 'package:flutterwings/animations/backgroundanim/bg1m.dart';
//
// class bganim4 extends StatefulWidget {
//   @override
//   _bganim4State createState() => _bganim4State();
// }
//
// class _bganim4State extends State<bganim4> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(right: 30),
//           child: Center(child: Text("Backgroud Animation 2",style: TextStyle(color: Colors.white),)),
//         ),
//         backgroundColor: Colors.teal,shadowColor: Colors.transparent,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       backgroundColor: Colors.red,
//       body: Stack(
//         children: [
//           Particles(
//             40,
//             Colors.white,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: InkWell( splashColor:Colors.white,onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>bg1m()));
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