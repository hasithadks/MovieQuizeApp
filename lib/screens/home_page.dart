import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie_quize_app/constants.dart';
import 'package:movie_quize_app/widgets/custom_btn.dart';
import 'package:movie_quize_app/widgets/custom_btn_homepage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children:[
              Container(
                padding: EdgeInsets.only(
                  top: 24.0,
                ),
                child:Text("Welcome to Movie Quiz App",
                  textAlign: TextAlign.center,
                  style: Constants.boldHeading,
                ) ,
              ),

              Column(

                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 15.0,

                    ),

                    child: MaterialButton(
                      minWidth: 300.0,
                      height: 65,
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.purpleAccent,
                        width: 4.0),

                      ),


                      color: Colors.black,
                      onPressed: () async{

                      },
                      child: Center(
                        child: Row(
                          children: [
                            Column(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 10.0
                                  ),
                                 child: Icon(Icons.movie_creation_rounded,
                                 color: Colors.white,
                                 size: 35.0,),
                               )
                             ],
                            ),
                            Column(
                              children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0,
                                  vertical: 10.0
                                ),
                                child: Text("Movie Quiz",
                                style: new TextStyle(fontSize: 18.0, color: Colors.white)),
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 15.0,
                    ),
                    child: MaterialButton(
                      minWidth: 300.0,
                      height: 65,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.pink,
                              width: 4.0)
                      ),
                      onPressed: () async{

                      },
                      child: Center(
                        child: Row(
                          children: [
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 10.0
                                  ),
                                  child: Icon(Icons.leaderboard_rounded,
                                    color: Colors.white,
                                    size: 35.0,),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0,
                                      vertical: 10.0
                                  ),
                                  child: Text("Leader Board",
                                      style: new TextStyle(fontSize: 18.0, color: Colors.white)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 15.0,
                    ),
                    child: MaterialButton(
                      minWidth: 300.0,
                      height: 65,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.blueAccent,
                              width: 4.0)
                      ),
                      onPressed: () async{

                      },
                      child: Center(
                        child: Row(
                          children: [
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 10.0
                                  ),
                                  child: Icon(Icons.score_rounded,
                                    color: Colors.white,
                                    size: 35.0,),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0,
                                      vertical: 10.0
                                  ),
                                  child: Text("My Score",
                                      style: new TextStyle(fontSize: 18.0, color: Colors.white)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ),

                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 35.0,
                ),
                  child: MaterialButton(
                    minWidth: 300.0,
                    height: 65,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.white,
                            width: 4.0)
                    ),
                    onPressed: () async{
                      await FirebaseAuth.instance.signOut();
                    },
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 10.0
                                ),
                                child: Icon(Icons.logout,
                                  color: Colors.white,
                                  size: 35.0,),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0,
                                    vertical: 10.0
                                ),
                                child: Text("LOG OUT",
                                    style: new TextStyle(fontSize: 18.0, color: Colors.white)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              )
              ,

            ],
          ))

        ),

    );
  }
}
