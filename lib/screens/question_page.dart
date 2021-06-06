
import 'package:flutter/material.dart';

import '../constants.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
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

      body: SafeArea(

          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children:[
                  Container(
                    padding: EdgeInsets.only(
                      top: 40.0,
                    ),
                    child:Text("Level 01 Question 01",
                      textAlign: TextAlign.center,
                      style: Constants.boldHeadingWhite,
                    ) ,
                  ),

                  Column(

                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 15.0,

                        ),

                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 2.0,
                          ),
                          width: 350.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.black,

                              borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 4.0,
                            ),
                          ),
                          child: Text(
                            "What is the First Movie in the World?",
                            textAlign: TextAlign.center,
                            style: Constants.regularWhiteText,

                          ),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 4.0,
                        ),
                        child: MaterialButton(
                          minWidth: 350.0,
                          height: 85,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.white,
                                  width: 4.0)
                          ),
                          onPressed: () async{

                          },
                          child: Text("Answer 01",
                            textAlign: TextAlign.center,
                            style: Constants.regularWhiteText,),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 4.0,
                        ),
                        child: MaterialButton(
                          minWidth: 350.0,
                          height: 85,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.white,
                                  width: 4.0)
                          ),
                          onPressed: () async{

                          },
                          child: Text("Answer 01",
                            textAlign: TextAlign.center,
                            style: Constants.regularWhiteText,),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 4.0,
                        ),
                        child: MaterialButton(
                          minWidth: 350.0,
                          height: 85,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.white,
                                  width: 4.0)
                          ),
                          onPressed: () async{

                          },
                          child: Text("Answer 01",
                            textAlign: TextAlign.center,
                            style: Constants.regularWhiteText,),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 4.0,
                        ),
                        child: MaterialButton(
                          minWidth: 350.0,
                          height: 85,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.green,
                                  width: 4.0)
                          ),
                          onPressed: () async{

                          },
                          child: Text("Answer 01",
                            textAlign: TextAlign.center,
                            style: Constants.regularWhiteText,),
                        ),

                      ),

                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 35.0,
                    ),

                  )
                  ,

                ],
              ))

      ),
      backgroundColor: Colors.black,
    );
  }
}
