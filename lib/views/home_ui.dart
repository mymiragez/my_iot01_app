// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import "package:flutter/material.dart";
import "package:my_iot01_app/views/login_ui.dart";
import "package:my_iot01_app/views/signup_ui.dart";

class homeUI extends StatefulWidget {
  const homeUI({super.key});

  @override
  State<homeUI> createState() => _homeUIState();
}

class _homeUIState extends State<homeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        //stack เป็นการวางซ้อนทับกัน
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Build Awesome Apps',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  'Southeast Asia University 2024',
                ),
                Text(
                  'IoT SAU',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginUI(),
                          ),
                        );
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black,),
                        backgroundColor: Colors.amber,
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.35,
                          MediaQuery.of(context).size.height * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupUI(),
                          ),
                        );
                      },
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.35,
                          MediaQuery.of(context).size.height * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
