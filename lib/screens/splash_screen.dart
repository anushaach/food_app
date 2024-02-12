import 'package:flutter/material.dart';
import 'package:food_app/screens/login.dart';
import 'package:food_app/screens/signup.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 232, 230),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Food Shop",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  CircleAvatar(
                    radius: 110,
                    backgroundColor: Color.fromARGB(255, 135, 218, 213),
                    backgroundImage: AssetImage(
                      'images/1.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 340,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50)),
              color: Color.fromARGB(255, 114, 231, 229),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Welcome to our Food Shop where we provide fresh and healthy food. For a best experience visit our app.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Loginpage(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 255, 255),
                                onPrimary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 16),
                            )),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signup(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 255, 255),
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text("Sign Up"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
