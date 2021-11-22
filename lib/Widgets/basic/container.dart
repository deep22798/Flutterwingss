import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';
class container extends StatefulWidget {
  const container({Key? key}) : super(key: key);

  @override
  _containerState createState() => _containerState();
}

class _containerState extends State<container> {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/container.txt');
    setState(() {
      data=responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    String url="https://flutter.dev/";
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.transparent,backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("container",style: TextStyle(color: Colors.teal),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(alignment: Alignment.center,
                child: Container(decoration: BoxDecoration(color: Colors.teal,

                    image: DecorationImage(image: AssetImage("assets/container.gif")),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 120,width: 120,
                ),),
              SizedBox(height: 20,),
              Text("Container class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("A container first surrounds the child with padding (inflated by any borders present in the decoration) and then applies additional constraints to the padded extent (incorporating the width and height as constraints, if either is non-null). The container is then surrounded by additional empty space described from the margin."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("During painting, the container first applies the given transform, then paints the decoration to fill the padded extent, then it paints the child, and finally paints the foregroundDecoration, also filling the padded extent."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Containers with no children try to be as big as possible unless the incoming constraints are unbounded, in which case they try to be as small as possible. Containers with children size themselves to their children. The width, height, and constraints arguments to the constructor override this."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("For a vertical variant, see Column."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("By default, containers return false for all hit tests. If the color property is specified, the hit testing is handled by ColoredBox, which always returns true. If the decoration or foregroundDecoration properties are specified, hit testing is handled by Decoration.hitTest."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Layout behavior",style: TextStyle(fontWeight: FontWeight.bold),),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("See BoxConstraints for an introduction to box layout models."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Since Container combines a number of other widgets each with their own layout behavior, Container's layout behavior is somewhat complicated."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Summary: Container tries, in order: to honor alignment, to size itself to the child, to honor the width, height, and constraints, to expand to fit the parent, to be as small as possible."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("If the iconanimation has no child, no height, no width, no constraints, and the parent provides unbounded constraints, then Container tries to size as small as possible."),)),
              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("If the iconanimation has no child and no alignment, but a height, width, or constraints are provided, then the Container tries to be as small as possible given the combination of those constraints and the parent's constraints."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("If the iconanimation has no child, no height, no width, no constraints, and no alignment, but the parent provides bounded constraints, then Container expands to fit the constraints provided by the parent."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("If the iconanimation has an alignment, and the parent provides unbounded constraints, then the Container tries to size itself around the child."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("If the iconanimation has an alignment, and the parent provides bounded constraints, then the Container tries to expand to fit the parent, and then positions the child within itself as per the alignment."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("Otherwise, the iconanimation has a child but no height, no width, no constraints, and no alignment, and the Container passes the constraints from the parent to the child and sizes itself to match the child."),)),
              SizedBox(height:10),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.topLeft,
                    child: Text("The margin and padding properties also affect the layout, as described in the documentation for those properties. (Their effects merely augment the rules described above.) The decoration can implicitly increase the padding (e.g. borders in a BoxDecoration contribute to the padding); see Decoration.padding."),)),
              SizedBox(height:10),









              Card(elevation: 5,
                child: Container(
                  height: 200,width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/containerwid.png")),
                      color: Colors.white
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Source Codes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  )),
              SizedBox(height: 20,),
              SelectableText(data)


            ],
          ),
        ),
      ),
    );
  }
}
