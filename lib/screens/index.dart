import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:movie_quize_app/theme/colors.dart';

import 'Model.dart';

class IndexPage extends StatefulWidget{
  @override
  _IndexPageState createState() => _IndexPageState();
}
class _IndexPageState extends State<IndexPage> {


  final fb = FirebaseDatabase.instance.reference().child("Questions");
  List <Model> list = List();

  void initState() {
    super.initState();
    fb.once().then((DataSnapshot snap) {
      var data = snap.value;
      list.clear();
      data.forEach((key, value) {
        Model model = new Model(
          Answer: value['Answer'],
          Option1: value['Option1'],
          Option2: value['Option2'],
          Option3: value['Option3'],
          Option4: value['Option4'],
          key: key,
        );
        print(value['Answer']);
        print("ss");
        list.add(model);
      });
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget UI(String answer, String option1, String key) {
      return new GestureDetector(
        onLongPress: () {},
        onTap: () {},
        child: Card(
          child: Column(
            children: <Widget>[
              Text(
                answer,
                style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        child: list.length == 0? Text("Data is null") : new ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              return UI(
                  list[index].Answer, list[index].Option1, list[index].Option2);
            }
        ),
      ),
    );
  }
}
