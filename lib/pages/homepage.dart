// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  // Logo
                  Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(
                        'ci',
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ))),
                  SizedBox(height: 20),
                  // Slogan
                  Text('Discover a New Path',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      )),
                  SizedBox(height: 25),
                  // Login Text Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Password Text Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[800]),
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  // Sign In Button
                  Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[400],
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  SizedBox(height: 25),
                  // Sign in with apple, google, meta
                  Row(
                    children: [
                      Expanded(
                          child: Container(height: 1, color: Colors.grey[400])),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or Continue With',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(height: 1, color: Colors.grey[400])),
                    ],
                  ),
                  SizedBox(height: 50),

                  // Sign up buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('lib/images/appleicon.png'),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('lib/images/googleicon.png'),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('lib/images/metaicon.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?',
                          style: TextStyle(color: Colors.grey[700])),
                      SizedBox(width: 10),
                      Text('Sign up now',
                          style: TextStyle(color: Colors.blue[700]))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
