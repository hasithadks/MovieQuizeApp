import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_quize_app/constants.dart';
import 'package:movie_quize_app/screens/add_questions.dart';
import 'package:movie_quize_app/screens/home_page.dart';
import 'package:movie_quize_app/screens/login_page.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          //StreamBuilder can check the login state Live
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamSnapshot){
              if (streamSnapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${streamSnapshot.error}"),
                  ),
                );
              }

              //Connection state active -  do the login check inside the if statement
              if(streamSnapshot.connectionState == ConnectionState.active){
                //get the user.
                User _user = streamSnapshot.data;

                if(_user == null){

                  return LoginPage();

                }else if(_user.email == "admin@gmail.com"){

                  return AddQuestions();

                } else {

                  return HomePage();

                }

              }

              return Scaffold(
                body: Center(
                  child: Text("Checking Authentication...",
                    style: Constants.regularrHeading,
                  ),
                ),
              );
            },
          );
        }

        //CONNECT TO FIREBASE - LOADING
        return Scaffold(
          body: Center(
            child: Text("Initialization App...",
              style: Constants.regularrHeading,
            ),
          ),
        );
      },
    );
  }
}
