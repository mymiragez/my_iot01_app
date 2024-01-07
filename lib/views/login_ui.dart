// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class loginUI extends StatefulWidget {
  const loginUI({super.key});

  @override
  State<loginUI> createState() => _loginUIState();
}

class _loginUIState extends State<loginUI> {
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
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              Image.asset(
                'assets/images/logo.png',
                height: MediaQuery.of(context).size.height * 0.2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
