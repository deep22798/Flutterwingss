import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwings/Basics/basic.dart';
import 'package:flutterwings/Widgets/basicwidgets.dart';
import 'package:flutterwings/adhelper.dart';
import 'package:flutterwings/animations/mainani.dart';
import 'package:flutterwings/firebase/firebase.dart';
import 'package:flutterwings/introduction/introduction.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:flutterwings/job/job.dart';
import 'package:flutterwings/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutterwings/morewidgets/morewidgets.dart';


const int maxFailedLoadAttempts = 3;
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


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





  InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;
  @override
  void initState() {
    super.initState();
    _createInterstitialAd();
  }
  @override
  void dispose() {
    super.dispose();
    _interstitialAd?.dispose();
  }
  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-5699587870603304/2894382457',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            _interstitialAd = ad;
            _numInterstitialLoadAttempts = 0;
            _interstitialAd!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            _interstitialAd = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              _createInterstitialAd();
            }
          },
        ));
  }

  void _showInterstitialAd() {
    if (_interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );
    _interstitialAd!.show();
    _interstitialAd = null;
  }




  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Notice"),
      content: Text("FirebaseTools Section \nAvailable on next update"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
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

  showAlertialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Notice"),
      content: Text("API integration Section \nAvailable on next update"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: WillPopScope(onWillPop: _onWillPop,
        child: Center(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 18.5 / 8,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          viewportFraction: 0.8,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          enlargeCenterPage: true
                      ),
                      items: [
                        Container(
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:
                            AssetImage("assets/caro1.png"
                            ), fit: BoxFit.cover
                            ),
                          ),),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:
                            AssetImage("assets/learn1.png"
                            ), fit: BoxFit.cover
                            ),
                          ),),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:
                            AssetImage("assets/learn2.png"
                            ), fit: BoxFit.cover
                            ),
                          ),),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:
                            AssetImage("assets/learn3.jpg"
                            ), fit: BoxFit.cover
                            ),
                          ),)
                      ],

                    )
                ),


                // Align(alignment: Alignment.centerLeft,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Card(shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),),
                //       shadowColor: Colors.teal,
                //       elevation: 5,
                //       child: Container(height: 50, width: 100,
                //         child: Row(
                //           children: [
                //             Container(height: 50,
                //               width: 50,
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   image: DecorationImage(
                //                       image: AssetImage("assets/learn.gif"),
                //                       fit: BoxFit.fill)
                //               ),), SizedBox(width: 2,),
                //             Column(mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Text("Learn", style: TextStyle(fontSize: 12,),),
                //                 Text("Flutter", style: TextStyle(
                //                     fontSize: 12, fontWeight: FontWeight.bold),),
                //               ],
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ), SizedBox(height: 10,),


                SizedBox(height: 10,),
                Container(
                  height: 171,
                  decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage("assets/lear.jpg")))
                  , width: double.infinity,),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),

                  child: Wrap(runSpacing: 2, spacing: 2,
                    children: [
                      InkWell(
                          child: Card(elevation: 5, shadowColor: Colors.teal,
                            child: Container(
                              height: 130, width: 105, decoration: BoxDecoration(
                                border: Border.all(color: Colors.teal.shade100),
                                color: Colors.white),
                              child: Column(mainAxisAlignment: MainAxisAlignment
                                  .center,
                                children: [
                                  Container(
                                    height: 80, width: 80,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/intro.gif"))),
                                  ),
                                  Text(
                                    "Flutter", style: TextStyle(fontSize: 10),),
                                  Text("Introduction",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                          splashColor: Colors.teal,
                          onTap: () {
                            _showInterstitialAd();
                            // if (_isLoaded) {
                            //   _interstitialAd!.show();
                            //   // _showInterstitialAd();
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => introduction()));
                            // }
                          }
                      ),
                      InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => basic()));
                        },
                        child: Card(elevation: 5, shadowColor: Colors.teal,
                          child: Container(height: 130, width: 105,
                            decoration: BoxDecoration(color: Colors.white,
                              border: Border.all(color: Colors.teal.shade100),),
                            child: Column(mainAxisAlignment: MainAxisAlignment
                                .center,
                              children: [
                                Container(
                                  height: 80, width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/basic.gif"),
                                          fit: BoxFit.fill)),
                                ),
                                Text("Flutter", style: TextStyle(fontSize: 10),),
                                Text("Basics",
                                  style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          // _interstitialAd?.show();
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => animations()));
                        },
                        child: Card(elevation: 5, shadowColor: Colors.teal,
                          child: Container(
                            height: 130, width: 105, decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal.shade100),
                            color: Colors.white,),
                            child: Column(mainAxisAlignment: MainAxisAlignment
                                .center,
                              children: [
                                Container(
                                  height: 80, width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/ani.gif"))),
                                ),
                                Text("Flutter", style: TextStyle(fontSize: 10),),
                                Text("Animations",
                                  style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          // _interstitialAd?.show();
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => basicwidgets()));
                        },
                        child: Card(elevation: 5, shadowColor: Colors.teal,
                          child: Container(
                            height: 130, width: 105, decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal.shade100),
                            color: Colors.white,),
                            child: Column(mainAxisAlignment: MainAxisAlignment
                                .center,
                              children: [
                                Container(
                                  height: 80, width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/wid.gif"),
                                          fit: BoxFit.fill)),
                                ),
                                Text("Basic", style: TextStyle(fontSize: 10),),
                                Text("Widgets",
                                  style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => job()));
                        },
                        child: Card(elevation: 5, shadowColor: Colors.teal,
                          child: Container(
                            height: 130, width: 105, decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal.shade100),
                            color: Colors.white,),
                            child: Column(mainAxisAlignment: MainAxisAlignment
                                .center,
                              children: [
                                Container(
                                  height: 80, width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/job.gif"),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  "Apply for ", style: TextStyle(fontSize: 10),),
                                Text("Flutter Job",
                                  style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          // _interstitialAd?.show();
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => morewidgets()));
                        },
                        child: Card(elevation: 5, shadowColor: Colors.teal,
                          child: Container(
                            height: 130, width: 105, decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal.shade100),
                            color: Colors.white,),
                            child: Column(mainAxisAlignment: MainAxisAlignment
                                .center,
                              children: [
                                Container(
                                  height: 80, width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(
                                          "assets/morewidgets.gif"),
                                          fit: BoxFit.fill)),
                                ),
                                Text("More", style: TextStyle(fontSize: 10),),
                                Text("Widgets",
                                  style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(splashColor: Colors.teal,
                    onTap: () {
                      // _interstitialAd?.show();
                      // showAlertDialog(context);
                      var user;
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => firebase(user: user,)));
                    },
                    child: Card(
                        elevation: 5, shadowColor: Colors.teal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            child: SingleChildScrollView(scrollDirection: Axis
                                .horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 100, width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/fire.gif"),
                                              fit: BoxFit.fill)),),
                                  ), SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Firebase", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),),
                                      Text("Tools", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),),
                                    ],
                                  ), SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_forward_ios, size: 25,),
                                      Text("coming Soon",
                                        style: TextStyle(color: Colors.white),)
                                    ],
                                  )
                                ],),
                            ),

                            height: 100,
                            width: double.infinity,
                            color: Colors.white,),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(splashColor: Colors.teal,
                    onTap: () {
                      // _interstitialAd?.show();
                      showAlertialog(context);
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>firebase()));
                    },
                    child: Card(
                        elevation: 5, shadowColor: Colors.teal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            child: SingleChildScrollView(scrollDirection: Axis
                                .horizontal,
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    height: 100, width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/api.gif"),
                                            fit: BoxFit.fill)),),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("API", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),),
                                    Text("Integration", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),),
                                  ],
                                ), SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_forward_ios, size: 25,),
                                    Text("coming Soon")
                                  ],
                                )
                              ],),
                            ),

                            height: 100,
                            width: double.infinity,
                            color: Colors.white,),
                        )),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 171,
                  decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage("assets/lear2.jpg")))
                  , width: double.infinity,),
                // SizedBox(height: 20,),
                // if (_isBannerAdReady)
                //   Container(
                //     height: _bannerAd.size.height.toDouble(),
                //     width: _bannerAd.size.width.toDouble(),
                //     child: AdWidget(ad: _bannerAd),
                //   ),
                SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }

}