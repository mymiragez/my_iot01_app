// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_iot01_app/views/home_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupUI extends StatefulWidget {
  const SignupUI({super.key});

  @override
  State<SignupUI> createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.08,
            left: MediaQuery.of(context).size.width * 0.08,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homeUI(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              Image.asset(
                'assets/images/logo.png',
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              Text(
                'Get On Board!,',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
              ),
              Text(
                'Create your profile to start your Journey.',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                //Full Name
                height: MediaQuery.of(context).size.height * 0.08,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Icon(
                      Icons.person_outlined,
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(146, 159, 159, 159),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // Email
                height: MediaQuery.of(context).size.height * 0.08,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    hintText: 'E-Mail',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(146, 159, 159, 159),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // Phone
                height: MediaQuery.of(context).size.height * 0.08,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Icon(
                      Icons.tag_sharp,
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    hintText: 'Phone No',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(146, 159, 159, 159),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                //Password
                height: MediaQuery.of(context).size.height * 0.08,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(146, 159, 159, 159),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(146, 159, 159, 159),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text(
                  'OR',
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  label: Text(
                    'SIGN-IN WITH GOOGLE',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account? "),
                  Text.rich(
                    TextSpan(
                      text: "LOGIN",
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
