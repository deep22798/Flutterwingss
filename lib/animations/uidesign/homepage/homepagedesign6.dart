import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class hpd6 extends StatefulWidget {
  @override
  _hpd6State createState() => _hpd6State();
}

class _hpd6State extends State<hpd6> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffF8F9FB),
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 20,
          shadowColor: Color(0xffF0F0F0).withOpacity(.4),
          backgroundColor: Colors.teal
          ,
          title: Text(
            '   Your App\'s Name',
            textScaleFactor: 1.12,
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            IconButton(
              color: Colors.black.withOpacity(.7),
              tooltip: 'Settings',
              enableFeedback: true,
              icon: Icon(
                CupertinoIcons.gear_alt_fill,
                color: Colors.black.withOpacity(.7),
              ),
              onPressed: () {
                HapticFeedback.lightImpact();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => settingsPage()));
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black.withOpacity(.8),
            unselectedLabelStyle:
            TextStyle(color: Colors.black.withOpacity(.5)),
            unselectedLabelColor: Colors.black.withOpacity(.4),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black.withOpacity(.8),
            tabs: [
              Tab(
                child: Text(
                  'EXAMPLE',
                ),
              ),
              Tab(
                child: Text(
                  'EXAMPLE',
                ),
              ),
              Tab(
                child: Text(
                  'EXAMPLE',
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                mainCardWidget(context),
                mainCardWidget(context),
                mainCardWidget(context),
              ],
            ),
            Align(alignment: Alignment.bottomCenter,
              child: FlatButton(color:Colors.teal,onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>hpd6codes()));
              }, child: Text("View Codes",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}

Widget mainCardWidget(BuildContext context) {
  return ListView(
    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      cardWithInfoPage('assets/images/file_name.png', 'Example', context),
      SizedBox(
        height: MediaQuery.of(context).size.width / 7,
      ),
    ],
  );
}

Widget cardWithInfoPage(String image, String name, BuildContext context) {
  return cardWidget(
    context,
    infoPage(name, context),
    name,
    image,
  );
}

Widget cardWidget(
    BuildContext context, Widget route, String name, String image) {
  double _w = MediaQuery.of(context).size.width;
  double _f = MediaQuery.of(context).textScaleFactor;
  return InkWell(
    enableFeedback: true,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () {
      HapticFeedback.lightImpact();
      return Navigator.pop(context,[route]);
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.04), blurRadius: 30),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
      height: _w / 5,
      padding: EdgeInsets.all(_w / 25),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: _w / 2.0,
              // color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: _f * 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.8),
                    ),
                  ),
                  Text(
                    'Tap to know more',
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: _f * 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: _w / 5.5,
              width: _w / 3.3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0),
                color: Colors.black.withOpacity(.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1), blurRadius: 30),
                ],
                // image: DecorationImage(
                //     image: AssetImage(image), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  'Add image here',
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget infoPage(String name, BuildContext context) {
  double _f = MediaQuery.of(context).textScaleFactor;
  return Scaffold(
    backgroundColor: Color(0xffF8F9FB),
    appBar: AppBar(
      leading: IconButton(
        tooltip: 'Back',
        icon: Icon(
          CupertinoIcons.chevron_back,
          color: Colors.black.withOpacity(.7),
        ),
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.maybePop(context);
        },
      ),
      shadowColor: Color(0xffF0F0F0).withOpacity(.4),
      elevation: 20,
      backgroundColor: Colors.white,
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: _f * 22,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          color: Colors.black.withOpacity(.7),
          tooltip: 'Settings',
          enableFeedback: true,
          icon: Icon(CupertinoIcons.gear_alt_fill),
          onPressed: () {
            HapticFeedback.lightImpact();
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => SettingsPage()));
          },
        ),
      ],
    ),
  );
}





class hpd6codes extends StatefulWidget {
  const hpd6codes({Key? key}) : super(key: key);

  @override
  _hpd6codesState createState() => _hpd6codesState();
}

class _hpd6codesState extends State<hpd6codes> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/hpd6.txt');
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
          child: Center(child: Text("HomePage Design 6 Codes",style: TextStyle(color: Colors.white),)),
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