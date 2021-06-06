import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Levels extends StatefulWidget {
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
                                        child: Icon(Icons.star_border,
                                          color: Colors.white,
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
