// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage.dart';
import 'package:food_app/screens/signup.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 160,
        backgroundColor: Color.fromARGB(255, 114, 231, 229),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ));
              },
              child: Text(
                "Register",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 180,
            width: 100,
            color: Color.fromARGB(255, 114, 231, 229),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 55),
              child: Text(
                "Login Page",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: "UserName",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: "Password",
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password",
              style: TextStyle(color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 241, 236, 236),
                onPrimary: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Row(
              children: [
                CircleAvatar(
                  // backgroundImage: AssetImage('images/google.png'),
                  backgroundColor: Colors.transparent,
                  radius: 15,
                  child: Image.asset(
                    'images/google.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sign In with Google",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 241, 236, 236),
                onPrimary: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Row(
              children: [
                CircleAvatar(
                  // backgroundImage: AssetImage('images/google.png'),
                  backgroundColor: Colors.transparent,
                  radius: 15,
                  child: Image.asset(
                    'images/facebook.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sign In with Facebook",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: 180,
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Create new Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
