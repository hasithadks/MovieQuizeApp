import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddQuestions extends StatefulWidget {
  AddQuestions({this.app});
  final FirebaseApp app;

  @override
  _AddQuestionsState createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions> {
  final referenceDatabase = FirebaseDatabase.instance;

  final mName = "Question";
  final a1 = "1st Answer";
  final a2 = "2nd Answer";
  final a3 = "3rd Answer";
  final a4 = "4th Answer";
  final cAnswer = "Correct Answer";
  final level = "Level";

  final questionController = TextEditingController();
  final answerController1 = TextEditingController();
  final answerController2 = TextEditingController();
  final answerController3 = TextEditingController();
  final answerController4 = TextEditingController();
  final correctAnswerController = TextEditingController();
  final levelController = TextEditingController();

  DatabaseReference questions;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    questions = database.reference().child('Questions');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();

    // return Container();
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Question Bank'),
        backgroundColor: Colors.blueGrey.shade900,
        actions:[
          IconButton(
            icon: Icon(Icons.logout),
            tooltip: 'Setting Icon',
            onPressed: () async{
              await FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(mName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: questionController,
                      decoration: InputDecoration(
                          hintText: "Please enter the question here"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(level,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: levelController,
                      decoration: InputDecoration(
                          hintText: "Please enter the level of quiz here (1-10)"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(a1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: answerController1,
                      decoration: InputDecoration(
                          hintText: "Please enter an answer here"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(a2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: answerController2,
                      decoration: InputDecoration(
                          hintText: "Please enter an answer here"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(a3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: answerController3,
                      decoration: InputDecoration(
                          hintText: "Please enter an answer here"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(a4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: answerController4,
                      decoration: InputDecoration(
                          hintText: "Please enter an answer here"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(cAnswer,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextField(
                      controller: correctAnswerController,
                      decoration: InputDecoration(
                          hintText:
                              "Please enter the correct answer number (1-4)"),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: FlatButton(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.black, width: 2.0)
                          ),
                          onPressed: () {
                            ref.child("Questions").push()
                                // .child(mName)
                                .set({
                              'Question': questionController.text,
                              'Level': levelController.text,
                              'Option1': answerController1.text,
                              'Option2': answerController2.text,
                              'Option3': answerController3.text,
                              'Option4': answerController4.text,
                              'Answer': correctAnswerController.text,
                            }).asStream();
                            questionController.clear();
                            levelController.clear();
                            answerController1.clear();
                            answerController2.clear();
                            answerController3.clear();
                            answerController4.clear();
                            correctAnswerController.clear();
                            showAlertDialog(context);
                          },
                          child: Text("Save Question",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Flexible(
                          child: new FirebaseAnimatedList(
                              shrinkWrap: true,
                              query: questions,
                              itemBuilder: (BuildContext context,
                                  DataSnapshot snapshot,
                                  Animation<double> animation,
                                  int index) {
                                return new ListTile(
                                  trailing: IconButton(
                                    icon: Icon(Icons.delete),
                                    color: Colors.red,
                                    onPressed: () =>
                                        questions.child(snapshot.key).remove(),
                                  ),
                                  title: new Text(snapshot.value['Question'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                );
                              })),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Success"),
    content: Text("Question & Answers added successfully"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
