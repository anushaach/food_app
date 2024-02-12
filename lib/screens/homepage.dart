import 'package:flutter/material.dart';
import 'package:food_app/screens/foodselect.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 198, 194),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 500,
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Search",
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 202, 233, 230),
              ),
              height: 190,
              width: 100,
              child: Row(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                        'images/pizza2.jpg',
                      ),

                      // radius: BorderSide.strokeAlignCenter,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        Text(
                          "Get 10% discount on Pizza",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Enjoy your Food",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('images/pizza1.jpg'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodSelect(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Chicken Pizza",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "Rs 450",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage('images/pizza1.jpg'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FoodSelect(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Chicken Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Rs 450",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('images/pizza1.jpg'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodSelect(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Chicken Pizza",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "Rs 450",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage('images/pizza1.jpg'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FoodSelect(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Chicken Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Rs 450",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('images/pizza1.jpg'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodSelect(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Chicken Pizza",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "Rs 450",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage('images/pizza1.jpg'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FoodSelect(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Chicken Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Rs 450",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('images/pizza1.jpg'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodSelect(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Chicken Pizza",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "Rs 450",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 243, 243),
                    ),
                    height: 230,
                    width: 180,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage('images/pizza1.jpg'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FoodSelect(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Chicken Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              "Rs 450",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
