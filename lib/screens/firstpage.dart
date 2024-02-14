import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 80,
              // color: Colors.amber,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 114, 231, 229),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3),
                    bottomRight: Radius.circular(70)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  "Food Shop",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
            ),
            Center(
                child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Splashscreen(),
                    ));
              },
              icon: Image.asset(
                'images/1.png',
              ),
              iconSize: 300,
            )),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 220, top: 90),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        bottomLeft: Radius.circular(8)),
                    color: Color.fromARGB(255, 114, 231, 229),
                    // color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
