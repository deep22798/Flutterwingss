import 'package:flutter/material.dart';
class job extends StatefulWidget {
  const job({Key? key}) : super(key: key);

  @override
  _jobState createState() => _jobState();
}

class _jobState extends State<job> {
  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {

      // set up the button
      Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () { Navigator.pop(context);},
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Apply"),
        content: Text("Please send your CV on \ninfo@wintechwings.in"),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Apply for flutter job",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(children: [
            Card(
                elevation: 5,shadowColor: Colors.teal,
                child: Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/job.gif"))),
                  height: 200,width: double.infinity,)),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Requirements",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      FlatButton(
                          color: Colors.teal,
                          onPressed: (){
                            showAlertDialog(context);
                          }, child: Text("Apply",style: TextStyle(color: Colors.white),))
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Minimum 2 years working as a full-time professional developer (Mobile) with at least 1-2 year experience in Flutter"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Knowledge of git Apply good software Development pattern(Redux BLoC)"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Knowledge of XML, JSON, and Rest API Development"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Should have clean Code architecture, patterns, and analytical skills"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Experience building a moderately complex app with good knowledge of Dart language"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Experience using mobile design patterns, building mobile frameworks, and building custom widgets"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Implementation of security and data protection, Integration of data storage solutions"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Able to integrate multiple data sources and databases into one system"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Experience with third-party libraries and APIs, firebase, google services [maps]"),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("At least 1 app upload in play store or App Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),)
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Roles & Responsibilities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ),

            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Work within a team to understand, collaborate and deliver the business goals"),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Develop and maintain web applications according to business requirements and technical specifications."),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Design, Development, and testing of existing & new Mobile Apps"),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Participate with team members in projects with strong analytical skills"),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Design and implementation of low-latency, high-availability, and performant applications"),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Willing to learn and work on different mobile platforms/frameworks when needed"),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Determine feasibility of technical solutions within time and budget constraints."),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Ensure secure software and infrastructure by adhering to industry standards and best practices."),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Undertake development operational tasks to release software applications, updates, and fixes.",),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Collaborate with team members and stakeholders.",),)
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Coach and mentor team members where needed.",),),),
            SizedBox(height: 20,)
          ],),
        ),
      ),
    );
  }
}
