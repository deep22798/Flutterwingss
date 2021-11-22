import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class buttonnb2 extends StatefulWidget {
  @override
  _buttonnb2State createState() =>
      _buttonnb2State();
}

class _buttonnb2State
    extends State<buttonnb2> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 90;
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom2code()));

              },
              child: Text("View Codes"))),
        ),
      ],
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Bottom Navigation Bar 2",style: TextStyle(color: Colors.white),)),
        ),
      ),
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          // HOME PAGE
          SizedBox(
            height: size.height,
            width: size.width,
            child: null,
          ),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * .04),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  CustomPaint(
                    size: Size(size.width, height),
                    painter: MyPainter(),
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * .93,
                      height: height,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(
                              currentValue == 0
                                  ? Icons.home
                                  : Icons.home_outlined,
                              color: currentValue == 0
                                  ? Colors.orange
                                  : Colors.black38,
                            ),
                            onPressed: () {
                              setState(() {
                                currentValue = 0;
                              });
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          IconButton(
                            icon: Icon(
                              currentValue == 1
                                  ? Icons.search
                                  : Icons.search_rounded,
                              color: currentValue == 1
                                  ? Colors.orange
                                  : Colors.black38,
                            ),
                            onPressed: () {
                              setState(() {
                                currentValue = 1;
                              });
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          IconButton(
                            icon: Icon(
                              currentValue == 2
                                  ? Icons.add_box_rounded
                                  : Icons.add,
                              color: currentValue == 2
                                  ? Colors.orange
                                  : Colors.black38,
                            ),
                            onPressed: () {
                              setState(() {
                                currentValue = 2;
                              });
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          IconButton(
                            icon: Icon(
                              currentValue == 3
                                  ? Icons.favorite
                                  : Icons.favorite_border_rounded,
                              color: currentValue == 3
                                  ? Colors.orange
                                  : Colors.black38,
                            ),
                            onPressed: () {
                              setState(() {
                                currentValue = 3;
                              });
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          IconButton(
                            icon: Icon(
                              currentValue == 4
                                  ? Icons.person
                                  : Icons.person_outline_rounded,
                              color: currentValue == 4
                                  ? Colors.orange
                                  : Colors.black38,
                            ),
                            onPressed: () {
                              setState(() {
                                currentValue = 4;
                              });
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width * .08, size.height * .21); // Start
    path.quadraticBezierTo(size.width * .2, 0, size.width * .35, 0);
    path.quadraticBezierTo(size.width * .6, 0, size.width * .65, 0);
    path.quadraticBezierTo(
        size.width * .8, 0, size.width * .92, size.height * .21);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class bottom2code extends StatefulWidget {
  const bottom2code({Key? key}) : super(key: key);

  @override
  _bottom2codeState createState() => _bottom2codeState();
}

class _bottom2codeState extends State<bottom2code> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/buttonnb2.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Bottom Navigation Bar 2 Codes",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 20,),
              SelectableText(data),SizedBox(height: 20,)

            ],
          ),
        ),
      ),

    );
  }
}