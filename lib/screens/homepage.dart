import 'package:flutter/material.dart';
import 'package:food_app/screens/foodselect.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodSelect(),
                  ));
            },
            child: Text("Next")),
      ),
    );
  }
}
