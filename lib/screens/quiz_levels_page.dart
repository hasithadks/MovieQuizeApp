
import 'package:flutter/material.dart';
import 'package:movie_quize_app/screens/question_page.dart';

import '../constants.dart';

class Levels extends StatefulWidget {
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {

  //Levels score
   static const level_1 = 2;
   static const level_2 = 1;
   static const level_3 = 0;
   static const level_4 = 3;
   static const level_5 = 1;
   static const level_6 = 2;
   static const level_7 = 3;
   static const level_8 = 3;
   static const level_9 = 3;
   static const level_10 = 2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_rounded),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 50.0,
                    ),
                    child:Text("Quiz Levels",
                      textAlign: TextAlign.center,
                      style: Constants.boldHeadingWhite,
                    ) ,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 50.0,
                          top: 40.0,
                          right: 225.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.purpleAccent,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QuestionPage()
                                    ),

                                  );
                                },
                                child: Center(
                                  child: Text("01",
                                      style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_1 > 0 ? Icons.star : Icons.star_border,
                                          color:level_1 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_1 > 1 ? Icons.star : Icons.star_border,
                                          color:level_1 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_1 > 2 ? Icons.star : Icons.star_border,
                                          color:level_1 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 225.0,
                            top: 5.0,
                            right: 50.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.pink,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("02",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_2 > 0 ? Icons.star : Icons.star_border,
                                          color:level_2 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_2 > 1 ? Icons.star : Icons.star_border,
                                          color:level_2 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_2 > 2 ? Icons.star : Icons.star_border,
                                          color:level_2 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 50.0,
                            top: 5.0,
                            right: 225.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.purple,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("03",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_3 > 0 ? Icons.star : Icons.star_border,
                                          color:level_3 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_3 > 1 ? Icons.star : Icons.star_border,
                                          color:level_3 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_3 > 2 ? Icons.star : Icons.star_border,
                                          color:level_3 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 225.0,
                            top: 5.0,
                            right: 50.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.deepOrange,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("04",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_4 > 0 ? Icons.star : Icons.star_border,
                                          color:level_4 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_4 > 1 ? Icons.star : Icons.star_border,
                                          color:level_4 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_4 > 2 ? Icons.star : Icons.star_border,
                                          color:level_4 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 50.0,
                            top: 5.0,
                            right: 225.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.blueGrey,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("05",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_5 > 0 ? Icons.star : Icons.star_border,
                                          color:level_5 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_5 > 1 ? Icons.star : Icons.star_border,
                                          color:level_5 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_5 > 2 ? Icons.star : Icons.star_border,
                                          color:level_5 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 225.0,
                            top: 5.0,
                            right: 50.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.amber,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("06",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_6 > 0 ? Icons.star : Icons.star_border,
                                          color:level_6 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_6 > 1 ? Icons.star : Icons.star_border,
                                          color:level_6 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_6 > 2 ? Icons.star : Icons.star_border,
                                          color:level_6 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 50.0,
                            top: 5.0,
                            right: 225.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.indigo,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("07",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_7 > 0 ? Icons.star : Icons.star_border,
                                          color:level_7 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_7 > 1 ? Icons.star : Icons.star_border,
                                          color:level_7 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_7 > 2 ? Icons.star : Icons.star_border,
                                          color:level_7 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 225.0,
                            top: 5.0,
                            right: 50.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.limeAccent,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("08",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_8 > 0 ? Icons.star : Icons.star_border,
                                          color:level_8 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_8 > 1 ? Icons.star : Icons.star_border,
                                          color:level_8 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_8 > 2 ? Icons.star : Icons.star_border,
                                          color:level_8 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 50.0,
                            top: 5.0,
                            right: 225.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.lightBlueAccent,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("09",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_9 > 0 ? Icons.star : Icons.star_border,
                                          color:level_9 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_9 > 1 ? Icons.star : Icons.star_border,
                                          color:level_9 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_9 > 2 ? Icons.star : Icons.star_border,
                                          color:level_9 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 225.0,
                            top: 5.0,
                            right: 50.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                minWidth: 60.0,
                                height: 100,
                                shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.orangeAccent,
                                      width: 4.0),

                                ),
                                color: Colors.black,
                                onPressed: () async{

                                },
                                child: Center(
                                    child: Text("10",
                                        style: new TextStyle(fontSize: 40.0, color: Colors.white))
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_10 > 0 ? Icons.star : Icons.star_border,
                                          color:level_10 > 0 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_10 > 1 ? Icons.star : Icons.star_border,
                                          color:level_10 > 1 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0,
                                            vertical: 10.0
                                        ),
                                        child: Icon(level_10 > 2 ? Icons.star : Icons.star_border,
                                          color:level_10 > 2 ? Colors.amber : Colors.white,
                                          size: 35.0,),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),

            ),
          ),
        ),

      ),
      backgroundColor: Colors.black,
    );
  }
}
