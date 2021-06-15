import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:movie_quize_app/theme/colors.dart';
import 'dart:ui';
import 'Model.dart';
import '../constants.dart';

class QandA extends StatefulWidget {
  const QandA({Key key}) : super(key: key);

  @override
  _QandAState createState() => _QandAState();
}

class _QandAState extends State<QandA> {

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
          Question: value['Question'],
          key: key,
        );
        // print(value['Question']);
        // print(value['Answer']);
        list.add(model);
      });
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //String answer;

    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(

          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children:[
                  Container(
                    padding: EdgeInsets.only(
                      top: 40.0,
                    ),
                    child:Text("Questions and Answers for Knowledge",
                      textAlign: TextAlign.center,
                      style: Constants.boldHeadingWhite,
                    ) ,
                  ),

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 15.0,

                        ),
                        child:Column(
                          children: [
                            FutureBuilder(
                              //future: provider_2.Question,
                              builder: (context,snapshot) {
                                return Scrollbar(
                                  child: Container(
                                    height: 570,
                                    child: ListView.separated(
                                        separatorBuilder: (BuildContext context,
                                            int index) =>
                                        const Divider(
                                          color: Colors.white,
                                        ),
                                        shrinkWrap: true,
                                        itemCount: list.length,
                                        itemBuilder: (context, index) {
                                          var answer;
                                          if(list[index].Answer == '1') {
                                             answer = list[index].Option1;
                                          }else if(list[index].Answer == '2'){
                                            answer = list[index].Option2;
                                          }else if(list[index].Answer == '3'){
                                            answer = list[index].Option3;
                                          }else if(list[index].Answer == '4'){
                                            answer = list[index].Option4;
                                          }
                                         return GestureDetector(
                                             child: Column(
                                                  children: [
                                                    Text(
                                                      list[index].Question,
                                                      textAlign: TextAlign
                                                          .center,
                                                      style: Constants
                                                          .regularWhiteText,
                                                    ),

                                                    Text(answer,
                                                      textAlign: TextAlign
                                                          .center,
                                                      style: Constants
                                                          .regularWhiteText,
                                                    ),
                                                  ],
                                                )
                                            );
                                        }
                                    ),
                                  ),
                                );
                              }
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ))
      ),

    );
  }
}
