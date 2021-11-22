import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutterwings/firebase/otp/otp.dart';

class logotp extends StatefulWidget {
  @override
  _logotpState createState() => _logotpState();
}

class _logotpState extends State<logotp> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.teal,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text('Phone Authentication')),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Card(shadowColor: Colors.teal,elevation: 10,
                  child: Container(height: 300,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                            child: Center(child: Container(height: 100,width: 100,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/otpp.gif"),fit: BoxFit.fill)),)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                          child: Form(key: _formKey,
                            child: TextFormField(
                              validator: (v) {
                                if (_controller.text.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'Phone Number must be up to 10 digits';
                                }
                              },
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.call,color: Colors.teal,),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                                hintText: 'Phone Number',
                                labelText: "Phone Number",labelStyle: TextStyle(color: Colors.teal),
                                prefix: Text('+91  '),
                              ),
                              maxLength: 10,
                              keyboardType: TextInputType.number,
                              controller: _controller,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ]),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MaterialButton(
              color: Colors.teal,
              onPressed: () {
                if(_formKey.currentState!.validate()){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPScreen(_controller.text)));
                }

              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>otpppp()));
          },color: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text("View Codes",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
  }





class otpppp extends StatefulWidget {
  const otpppp({Key? key}) : super(key: key);

  @override
  _otppppState createState() => _otppppState();
}

class _otppppState extends State<otpppp> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/firebase/otp.txt');
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
          child: Center(child: Text("OTP Verification",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
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
