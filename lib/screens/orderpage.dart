import 'package:flutter/material.dart';
import 'package:food_app/screens/Paymentpage.dart';
import 'package:food_app/screens/splash_screen.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        IconButton(
          // hoverColor: Color.fromARGB(255, 118, 245, 230),
          alignment: Alignment.topLeft,
          iconSize: 40,

          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        Center(
          child: Text(
            "Create Your Food",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 43),
          child: Container(
            height: 160,
            width: 500,
            // color: Colors.amber,
            child: Row(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'images/pizza1.jpg',
                      ),
                    ),
                  ),
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  width: 45,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'images/pizza2.jpg',
                      ),
                    ),
                  ),
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  width: 45,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'images/pizza3.jpg',
                      ),
                    ),
                  ),
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 160,
          width: 500,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'images/pizza2.jpg',
                    ),
                  ),
                ),
                height: 120,
                width: 120,
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 48,
            color: Colors.black,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  "Select Source",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 220,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: 30,
                  color: Colors.white,
                  child: Image.asset(
                    'images/drink.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: 'item1',
                    child: Text('Item 1'),
                  ),
                  DropdownMenuItem(
                    value: 'item2',
                    child: Text('Item 2'),
                  ),
                ],
                onChanged: (selectedItem) {
                  print('Selected item: $selectedItem');
                },
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.arrow_downward,
              //     color: Colors.white,
              //   ),
              // ),
            ]),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text(
                "Cancel the Oragne Juice",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 18),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 165, 237, 233)),
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: Row(
            children: [
              Text(
                "Total",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Text(
                  "Rs 450",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                child: Text(
                  "Check Out",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Are your sure want to log out'),
                  content:
                      const Text('If you click Ok then order is not added'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Splashscreen(),
                            ));
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text('Log out'),
            ),
          ],
        )
      ]),
    );
  }
}
