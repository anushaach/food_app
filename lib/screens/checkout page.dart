import 'package:flutter/material.dart';
import 'package:food_app/screens/orderpage.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

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
              // DropdownButton(
              //   items: [
              //     DropdownMenuItem(
              //       value: 'item1',
              //       child: Text('Item 1'),
              //     ),
              //     DropdownMenuItem(
              //       value: 'item2',
              //       child: Text('Item 2'),
              //     ),
              //   ],
              //   onChanged: (selectedItem) {
              //     print('Selected item: $selectedItem');
              //   },
              // )
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
              ),
            ]),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text(
                "Do you want to add Some Drink",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 18),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 165, 237, 233)),
                  child: Text(
                    "Add",
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
                    fontSize: 17),
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
                        builder: (context) => Orderpage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                child: Text(
                  "CheckOut",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 181, 234, 233)),
                // color: Colors.amber,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          color: Colors.black,
                        )),
                  ],
                ))
          ],
        )
      ]),
    );
  }
}
