
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import '../constants.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({this.app});
  final FirebaseApp app;
  @override
  _QuestionPageState createState() => _QuestionPageState();
}


class _QuestionPageState extends State<QuestionPage> {

  final referenceDatabase = FirebaseDatabase.instance;



  String Question = "Which 2020 film starring Robert Downey Jr tells the story of a physician who can talk to animals?";
  String Answer = "2";
  String Option1 = "Iron Man";
  String Option2 = "Dolittle";
  String Option3 = "The Avengers";
  String Option4 = "Sherlock Holmes";
  String Level = "1";
  bool correct = false;

  DatabaseReference questions;

  final questionCount = 3;
  final doneQuestionCount = 1;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    questions = database.reference().child('Questions');

    // QuestionClass  questionClass = new QuestionClass();
    //
    // database.reference().child('Questions').child(questionClass.Question)
    //     .set(<String, Object>{
    //   "mobileNumber": questionClass.Answer,
    //   "userName": questionClass.Level,
    //   "fullName": questionClass.Option1,
    // }).then((onValue) {
    //   return true;
    // }).catchError((onError) {
    //   return false;
    // });
    //
    // });
    super.initState();

    print(questions.key);
  }

  // Future<bool> saveUserData(QuestionClass userModel) async {
  //   await database
  //       .reference()
  //       .child("Users")
  //       .child(userModel.username)
  //       .set(<String, Object>{
  //     "mobileNumber": userModel.mobileNumber,
  //     "userName": userModel.userName,
  //     "fullName": userModel.fullName,
  //   }).then((onValue) {
  //     return true;
  //   }).catchError((onError) {
  //     return false;
  //   });

  void clickOptions(int value){
      if(value == int.parse(Answer) ){
        correct = true;
      }
      else{
        correct = false;
      }


  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
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
                            Question,
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
                              side: BorderSide(color: correct == true ? Colors.green : Colors.white,
                                  width: 4.0)
                          ),
                          onPressed: () async{
                            clickOptions(1);
                          },
                          child: Text(Option1,
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
                              side: BorderSide(color:Colors.green,
                                  width: 4.0)
                          ),
                          onPressed: () async{
                            clickOptions(2);
                          },
                          child: Text(Option2,
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
                          child: Text(Option3,
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
                          child: Text(Option4,
                            textAlign: TextAlign.center,
                            style: Constants.regularWhiteText,),
                        ),

                      ),
                      Container(

                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                            ],
                          ),
                        )
                      )

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
