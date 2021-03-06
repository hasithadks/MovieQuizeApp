import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie_quize_app/constants.dart';
import 'package:movie_quize_app/screens/register_page.dart';
import 'package:movie_quize_app/widgets/custom_btn.dart';
import 'package:movie_quize_app/widgets/custom_input.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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

  Future<String> _loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _loginEmail,
          password: _loginPassword
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
      _loginFormLoading = true;
    });

    //run the create Account Method
    String _loginFeedBack = await _loginAccount();

    // If the string is not null, we got error while create account.
    if( _loginFeedBack != null){
      _alertDialogBuilder(_loginFeedBack);

      //Set the form to regular state.
      setState(() {
        _loginFormLoading = false;
      });
    }



  }

  //Default form loading state
  bool _loginFormLoading = false;

  // Form input Field values
  String _loginEmail = "";
  String _loginPassword = "";

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
                  child:Text("Welcome user,\nLogin to your Account",
                    textAlign: TextAlign.center,
                    style: Constants.boldHeading,
                  ) ,
                ),

                Column(
                  children: [
                    CustomInput(
                      hintText: "Enter Email",
                      onChanged: (value) {
                        _loginEmail = value;
                      },
                      onSubmitted: (value){
                        _passwordFocusNode.requestFocus();
                      },
                      textInputAction: TextInputAction.next,
                    ),
                    CustomInput(
                      hintText: "Enter Password",
                      onChanged: (value) {
                        _loginPassword = value;
                      },
                      focusNode: _passwordFocusNode,
                      isPasswordField: true,
                      onSubmitted: (value){
                        _submitForm();
                      },
                    ),
                    CustomBtn(
                      text: "Login",
                      onPressed: (){
                        _submitForm();
                      },
                      isLoadig: _loginFormLoading,
                    ),
                  ],
                ),
              Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16.0,
                  ),
                 child: CustomBtn(
                    text: "Create New Account",
                    onPressed: (){
                     Navigator.push(
                         context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()
                          ),

                     );
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
