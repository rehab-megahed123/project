import 'package:flutter/material.dart';
import 'package:flutter_navigation/reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'package:flutter_navigation/views/login_screen.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _UserNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          //hexStringToColor("FDF8C9"),
          //hexStringToColor("F6E9F6"),
          hexStringToColor("C8A2C8"),
          hexStringToColor("CDA6CB"),
          hexStringToColor("000000"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _UserNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 90,
                ),
                logInSignUpButton(context, false, () {
                  Navigator.push(
                      context,
                      //MaterialPageRoute(builder: (context) => HomeScreen()));
                      MaterialPageRoute(builder: (context) => LogInScreen()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
