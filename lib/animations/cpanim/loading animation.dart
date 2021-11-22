import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class loadinganimation extends StatefulWidget {
  @override
  _loadinganimationState createState() => _loadinganimationState();
}

class _loadinganimationState extends State<loadinganimation>
    with TickerProviderStateMixin {
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/loadinganimation.txt');
    setState(() {
      data=responseText;
    });
  }
  String data="";

  late AnimationController controller1;
  late Animation<double> animation1;

  late AnimationController controller2;
  late Animation<double> animation2;

  @override
  void initState() {
    fetchFileData();
    super.initState();

    controller1 =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation1 = Tween<double>(begin: .0, end: .5)
        .animate(CurvedAnimation(parent: controller1, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
          controller2.forward();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });

    controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation2 = Tween<double>(begin: .0, end: .5)
        .animate(CurvedAnimation(parent: controller2, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });

    controller1.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Loading Animation",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 70,
                  width: 70,
                  child: CustomPaint(
                    painter: MyPainter(animation1.value, animation2.value),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 20,),
              SelectableText(data)
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double Radius_1;
  final double Radius_2;

  MyPainter(this.Radius_1, this.Radius_2);

  @override
  void paint(Canvas canvas, Size size) {
    Paint Circle_1 = Paint()..color = Color(0xff4285f4);

    Paint Circle_2 = Paint()..color = Color(0xfffbbc05);

    canvas.drawCircle(Offset(size.width * .5, size.height * .5),
        size.width * Radius_1, Circle_1);

    canvas.drawCircle(Offset(size.width * .5, size.height * .5),
        size.width * Radius_2, Circle_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}