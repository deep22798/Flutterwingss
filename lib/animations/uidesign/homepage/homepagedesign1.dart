import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class hpd1 extends StatefulWidget {
  @override
  _hpd1State createState() => _hpd1State();
}

class _hpd1State extends State<hpd1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: -30, end: 0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("HomePage Design 1",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Stack(
        children: [
          // background color
          backgroundColor(),

          /// ListView
          ListView(
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            reverse: true,
            children: [
              SizedBox(height: _w / 6.5),
              groupOfCards(
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
              ),
              groupOfCards(
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
              ),
              groupOfCards(
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
              ),
              groupOfCards(
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
              ),
              groupOfCards(
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
                'Example Text',
                Icons.favorite,
                RouteWhereYouGo(),
              ),
              SizedBox(height: _w / 10),
            ],
          ),

          /// blurTheStatusBar
          blurTheStatusBar(),

          /// AppBar
          bottomAppBar(),
        ],
      ),
    );
  }

  Widget groupOfCards(String title1, IconData icon1, Widget route1,
      String title2, IconData icon2, Widget route2) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: Padding(
          padding: EdgeInsets.only(bottom: _w / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card(title: title1, icon: icon1, route: route1, key: Key("5"),),
              card(title: title2, icon: icon2, route: route2, key: Key("6"),),
            ],
          ),
        ),
      ),
    );
  }
}

class RouteWhereYouGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("HomePage Design 1",style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}

class backgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffF583A5), Color(0xffF43FBB)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

class blurTheStatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
        child: Container(
          height: _w / 18,
          color: Colors.transparent,
        ),
      ),
    );
  }
}

class bottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              height: _w / 6.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: _w / 18),
                          Text(
                            'App\'s name',
                            style: TextStyle(
                              fontSize: _w / 17,
                              color: Colors.white.withOpacity(1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 20,),
                          FlatButton(color:Colors.teal,onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>hpd1codes()));
                          }, child: Text("View Codes",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            tooltip: 'Settings',
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white.withOpacity(1),
                              size: _w / 18,
                            ),
                            onPressed: () {
                              HapticFeedback.lightImpact();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return RouteWhereYouGo();
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(width: _w / 50)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class card extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget route;

  const card({required Key key, required this.title, required this.icon, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Container(
      height: _w / 2.1,
      width: _w / 2.4,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          HapticFeedback.lightImpact();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.15),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border:
              Border.all(color: Colors.white.withOpacity(.06), width: 1)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: _w / 7,
                  height: _w / 7,
                  alignment: Alignment.center,
                  decoration:
                  // BoxDecoration(color: Colors.black.withOpacity(.04), shape: BoxShape.circle),
                  BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                      shape: BoxShape.circle),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: _w / 14,
                  ),
                ),
                Text(
                  title,
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.9),
                    fontSize: _w / 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class hpd1codes extends StatefulWidget {
  const hpd1codes({Key? key}) : super(key: key);

  @override
  _hpd1codesState createState() => _hpd1codesState();
}

class _hpd1codesState extends State<hpd1codes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/hpd1.txt');
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
          child: Center(child: Text("HomePage Design 1 Codes",style: TextStyle(color: Colors.white),)),
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