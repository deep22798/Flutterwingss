import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class swipingcards extends StatefulWidget {
  @override
  _swipingcardsState createState() => _swipingcardsState();
}

class _swipingcardsState extends State<swipingcards>
    with SingleTickerProviderStateMixin {
  String data="";
  fetchFileData()async{
    String responseText;
    responseText =await rootBundle.loadString('text/swipingcards.txt');
    setState(() {
      data=responseText;
    });
  }

  late AnimationController controller;

  @override
  void initState() {
    fetchFileData();
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Swiping Cards",style: TextStyle(color: Colors.white),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    controller.forward();
                  });
                },
                child: CardStack(controller),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text("Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: 20,),
              SelectableText(data)
            ],
          ),
        ),
      ),
    );
  }
}

class CardStack extends StatefulWidget {
  final AnimationController controller;

  CardStack(this.controller);

  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  late Animation<Offset> slideAnimation;
  late List<SlideCard> cardList;

  @override
  void initState() {
    super.initState();
    cardList = List.generate(
      5,
          (index) => SlideCard(index),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1, 0.0),
    ).animate(
      CurvedAnimation(
        parent: widget.controller,
        curve: Curves.ease,
      ),
    );
    widget.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.controller.reset();
        setState(
              () => cardList.removeLast(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: cardList.map(
            (item) {
          return Transform.translate(
            offset: Offset(0, -item.index * 5.0),
            child: SlideTransition(
              position: getSlideOffset(item.index),
              child: item,
            ),
          );
        },
      ).toList(),
    );
  }

  getSlideOffset(int cardIndex) {
    if (cardIndex == cardList.length - 1) {
      return slideAnimation;
    } else {
      return AlwaysStoppedAnimation(Offset.zero);
    }
  }
}

class SlideCard extends StatelessWidget {
  final index;

  SlideCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xffFF5050),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: Offset(0, 10),
              )
            ]),
        child: Center(
          child: Text(
            'Card',
            style: TextStyle(color: Colors.white, fontSize: 100),
          ),
        ),
      ),
    );
  }
}