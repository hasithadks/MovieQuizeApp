import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_quize_app/screens/landing_page.dart';

import 'screens/home_page.dart';
import 'screens/q_and_a.dart';
import 'screens/question_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



