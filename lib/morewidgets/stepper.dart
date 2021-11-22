import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class steper extends StatefulWidget {
  @override
  _steperState createState() => _steperState();
}

class _steperState extends State<steper> {
  // init the step to 0th position
  int currentStep = 0;
  List<Step> mySteps = [
    Step(title: Text("Step 1"), content: Text("Start"), isActive: true),
    Step(
        title: Text("Step 2"),
        content: Text("Process 1"),
        state: StepState.editing,
        isActive: true),
    Step(
        title: Text("Step 3"),
        content: Text("Process 2"),
        state: StepState.editing,
        isActive: true),
    Step(
        title: Text("Step 4"),
        content: Text("Process 3"),
        state: StepState.editing,
        isActive: true),
    Step(title: Text("Step 5"), content: Text("End"), isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>steppercode()));
      },child: Text("Codes"),backgroundColor: Colors.teal,),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Stepper",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Container(
          child: Stepper(
            currentStep: this.currentStep,
            steps: mySteps,
            type: StepperType.vertical,
            onStepTapped: (step) {
              setState(() {
                currentStep = step;
              });
            },
            onStepCancel: () {
              setState(() {
                if (currentStep > 0) {
                  currentStep = currentStep - 1;
                } else {
                  currentStep = 0;
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (currentStep < mySteps.length - 1) {
                  currentStep = currentStep + 1;
                } else {
                  currentStep = 0;
                }
              });
            },
          )),
    );
  }
}



class steppercode extends StatefulWidget {
  const steppercode({Key? key}) : super(key: key);

  @override
  _steppercodeState createState() => _steppercodeState();
}

class _steppercodeState extends State<steppercode> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/other/steper.txt');
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
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Stepper",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
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
                SelectableText(data),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

