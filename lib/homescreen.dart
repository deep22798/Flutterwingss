
import 'package:flutter/material.dart';
import 'package:flutterwings/bottom%20bar/contact.dart';
import 'package:flutterwings/bottom%20bar/home.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
class homescreen extends StatefulWidget {

  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  AppUpdateInfo? _updateInfo;

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  bool _flexibleUpdateAvailable = false;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      setState(() {
        _updateInfo = info;
      });
    }).catchError((e) {
      showSnack(e.toString());
    });
  }

  void showSnack(String text) {
    if (_scaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(_scaffoldKey.currentContext!)
          .showSnackBar(SnackBar(content: Text(text)));
    }
  }



  BannerAd bAd= new BannerAd(size: AdSize.banner,
      adUnitId:'ca-app-pub-5699587870603304/4945814814',
      listener: BannerAdListener(
    onAdLoaded: (Ad ad){
      print("Ad Loaded");
    },
    onAdFailedToLoad: (Ad ad,LoadAdError error){
      print("Ad Failed");
      ad.dispose();
    },
    onAdOpened: (Ad ad){
      print("Ad loaded");
    }
  ),request: AdRequest()
  );

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    contact(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    // final AdWidget adWidget = AdWidget(ad: _bannerAd);
    // AdWidget(
    //   ad: bAd..load(),
    //   key: UniqueKey(),
    // );
    return Scaffold(backgroundColor: Colors.white,
      bottomNavigationBar:  Container(
        height: 40,
        child: AdWidget(ad: bAd..load(),
          key: UniqueKey(),
        ),),
      appBar: AppBar(

        title: Text("FlutterWings", style: TextStyle(color: Colors.teal),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              MaterialButton(
                  child: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),color: Colors.teal,minWidth: 10,height: 30,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  onPressed: (){
                _onItemTap(0);
              }),SizedBox(width: 5,),
              MaterialButton(minWidth: 10,height:30,color: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Text("About Us",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  onPressed: (){
                _onItemTap(1);
              })
            ],),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      // drawer: Drawer(
      //   child: SingleChildScrollView(
      //     child: Column(mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Container(decoration: BoxDecoration(
      //             boxShadow: [
      //               BoxShadow(
      //                 color: Colors.teal,blurRadius:5,spreadRadius: 3
      //               )
      //             ],
      //             color: Colors.teal,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
      //           height: 170,width: double.infinity,
      //           child: Stack(
      //             children: [
      //               Align(alignment: Alignment.center,
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                     image: DecorationImage(image: AssetImage("assets/splashlogo.png"))),
      //               ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(bottom: 5),
      //                 child: Align(alignment: Alignment.bottomCenter,
      //                   child: Text("FlutterWings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         SizedBox(height: 10,),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Wrap(runSpacing: 10,
      //             children: [
      //               InkWell(onTap: (){
      //                 _onItemTap(0);
      //               },
      //                 child: Card(
      //                   child: Container(
      //
      //                     child: Center(child: Text("Home")),
      //                     height: 50,decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(10),color: Colors.teal
      //                   ),),
      //                 ),
      //               ),
      //               InkWell(onTap: (){
      //                 _onItemTap(1);
      //               },
      //                 child: Card(
      //                   child: Container(
      //                     child: Center(child: Text("About Us")),
      //                 height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),)),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //               Container(height: 50,decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10),color: Colors.teal
      //               ),),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      //
      // bottomNavigationBar:
      //
      // BottomNavigationBar(
      //   selectedItemColor: Colors.teal,
      //   selectedIconTheme: IconThemeData(color: Colors.teal),
      //   elevation: 5,
      //   unselectedIconTheme: IconThemeData(color: Colors.black),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       // activeIcon: Icon(
      //       //   Icons.home,
      //       //   color: Colors.teal,
      //       // ),
      //         icon: Icon(
      //           Icons.home,
      //         ),
      //         label: 'Home'
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.connect_without_contact,
      //         ),
      //         label: 'About & Contact Us'
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(
      //     //     Icons.connect_without_contact,
      //     //   ),
      //     //   label: 'Contact',
      //     // ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTap,
      //   selectedFontSize: 13.0,
      //   unselectedFontSize: 13.0,
      // ),
      body:
      // DoubleBackToCloseApp(
      //   snackBar: const SnackBar(
      //     backgroundColor: Colors.teal,
      //     content: Center(child: Text("Tap back again to Exit\n\nSlide down for Cancel",style: TextStyle(color: Colors.white),)),),
      //   child:
        WillPopScope(onWillPop: _onWillPop,
          child: Stack(
            children: [_widgetOptions.elementAt(_selectedIndex),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 10),
              //   child: Align(
              //     alignment: FractionalOffset.bottomCenter,
              //     child: Padding(
              //         padding: EdgeInsets.only(top: 10.0),
              //         child: Container(
              //           alignment: Alignment.bottomCenter,
              //           child: adWidget,
              //           width: _bannerAd.size.width.toDouble(),
              //           height: _bannerAd.size.height.toDouble(),
              //         )
              //     ),
              //   ),
              // )


            ]
          ),
        ),
      // ),
    );
  }

}
