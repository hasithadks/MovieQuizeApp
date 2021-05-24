import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie_quize_app/widgets/custom_btn.dart';
import 'package:movie_quize_app/widgets/custom_input.dart';

import '../constants.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  Future<void> _alertDialogBuilder(String errorText) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context){
          return AlertDialog(
            title: Text("Error!!!"),
            content: Container(
              child: Text(errorText),
            ),
            actions: [
              FlatButton(
                child: Text("Close Dialog"),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  Future<String> _createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _registerEmail,
          password: _registerPassword
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password provided is too weak.";
      } else if (e.code == 'email-already-in-use') {
        return "The account already exists for that email.";
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitForm() async{

    //Set the form loading state
    setState(() {
      _registerFormLoading = true;
    });

    //run the create Account Method
    String _createAccountFeedBack = await _createAccount();

    // If the string is not null, we got error while create account.
    if( _createAccountFeedBack != null){
      _alertDialogBuilder(_createAccountFeedBack);

      //Set the form to regular state.
      setState(() {
        _registerFormLoading = false;
      });
    } else {
      // The String was null, user logged in head back to the login page.
      Navigator.pop(context);
    }



  }

  //Default form loading state
  bool _registerFormLoading = false;

  // Form input Field values
  String _registerEmail = "";
  String _registerPassword = "";

  //Focus Node for input Fields
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:[
                Container(
                  padding: EdgeInsets.only(
                    top: 24.0,
                  ),
                  child:Text("Create A New Account",
                    textAlign: TextAlign.center,
                    style: Constants.boldHeading,
                  ) ,
                ),

                Column(
                  children: [
                    CustomInput(
                      hintText: "Enter Email",
                      onChanged: (value) {
                        _registerEmail = value;
                      },
                      onSubmitted: (value){
                        _passwordFocusNode.requestFocus();
                      },
                      textInputAction: TextInputAction.next,
                    ),
                    CustomInput(
                      hintText: "Enter Password",
                        onChanged: (value) {
                          _registerPassword = value;
                        },
                      focusNode: _passwordFocusNode,
                      isPasswordField: true,
                      onSubmitted: (value){
                        _submitForm();
                      },
                    ),
                    CustomBtn(
                      text: "Create new Account",
                      onPressed: (){
                        _submitForm();
                      },
                      isLoadig: _registerFormLoading,
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16.0,
                    ),
                    child: CustomBtn(
                      text: "Back To Login",
                      onPressed: (){
                       Navigator.pop(context);
                      },
                      outlineBtn: true,
                    )
                )
                ,

              ],
            ))
        ,
      )
      ,
    );
  }
}
