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
      appBar: AppBar(
       title: Text("Movie Quiz App"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(
              top: 50.0,
            ),
            width: double.infinity,
            child: Column(
              children: [
                CustomHomeButton(
                  text: "Login",
                  onPressed: (){

                  },

                ),
                CustomHomeButton(
                  text: "Login",
                  onPressed: (){

                  },

                ),
                CustomHomeButton(
                  text: "Login",
                  onPressed: (){

                  },

                ),
                CustomHomeButton(
                  text: "Login",
                  onPressed: (){

                  },

                ),
                CustomHomeButton(
                  text: "Login",
                  onPressed: (){

                  },

                ),

              ],


            ),



          ),

        ),
      ),
    );
  }
}
