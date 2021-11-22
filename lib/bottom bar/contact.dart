import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutterwings/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class contact extends StatefulWidget {
  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {



  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/aboutus.txt');
    setState(() {
      data=responseText;
    });
  }



  _launchWhatsapp() async {
    const url = "https://wa.me/+919582508037?text=hello";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  opnne()async{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>websiteee()));
  }
  @override
  void initState() {
    fetchFileData();
    // TODO: implement initState
    super.initState();
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
    return WillPopScope(onWillPop: _onWillPop,
      child: Center(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(height: 300,width: double.infinity,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/abouitus.gif"))),)
              ,SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SelectableText(data),
              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: (){
                      launch('mailto:info@wintechwings.in?subject=This is Subject Title&body=This is Body of Email');
                      },
                        child: Column(
                          children: [
                            Container(height: 50,width: 50,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/mail.gif"))),),
                          Text("mail")
                          ],
                        )),SizedBox(width: 30,),
                    InkWell(onTap: (){opnne();},
                        child: Column(
                          children: [
                            Container(height: 50,width: 50,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/browser.gif"))),),
                            Text("Website")
                          ],
                        )),SizedBox(width: 30,),
                    InkWell(onTap: (){
                      _launchWhatsapp();
                    },
                        child: Column(
                          children: [
                            Container(height: 50,width: 50,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/whatsapp.gif"))),),
                            Text("Whatsapp")
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}




class websiteee extends StatefulWidget {
  const websiteee({Key? key}) : super(key: key);


  @override
  _websiteeeState createState() => _websiteeeState();
}
class _websiteeeState extends State<websiteee> {
  bool isLoading=true;
  final _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Center(child: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Text("wintechwings"),
      )),),
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: "https://wintechwings.com",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(backgroundColor: Colors.teal, color: Colors.white,),)
              : Stack(),
        ],
      ),
    );

  }
  }
