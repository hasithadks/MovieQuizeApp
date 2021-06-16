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


  final fb = FirebaseDatabase.instance.reference().child("LeaderBoard");
  List <Model> list = List();

  void initState() {
    super.initState();
    fb.once().then((DataSnapshot snap) {
      var data = snap.value;
      list.clear();
      data.forEach((key, value) {
        Model model = new Model(
          PlayerName: value['PlayerName'],
          Place: value['Place'],
          Score: value['Score'],
          key: key,
        );
        print(value['PlayerName']);
        print(value['Place']);
        print(value['Score']);
        list.add(model);
      });
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget UI(String playerName, String place, String score) {
      return new Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.grey)
        ),
        child: Card(

          child: Column(
            children: <Widget>[
              Text(
                playerName,
                style: TextStyle(
                    color: Colors.black54,

                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                place,
                style: TextStyle(
                  color: Colors.black38,

                  fontSize: 20,

                ),
              ),
              Text(
                score,
                style: TextStyle(
                  color: Colors.black26,

                  fontSize: 20,

                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Leader Board"),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        child: list.length == 0? Text("Data is null") : new ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              return UI(
                  list[index].PlayerName, list[index].Place, list[index].Score);
            }
        ),
      ),
    );
  }
}
