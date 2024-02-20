import 'package:flutter/material.dart';
import 'package:food_app/screens/card.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool selectoption = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 103, 202, 235),
        title: Center(
          child: Text("Payment Process"),
        ),
      ),
      body: Center(
        child: Container(
          // child: Checkbox(value: value, onChanged: onChanged),
          // child: Radio(value: value, groupValue: groupValue, onChanged: onChanged)
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Delivery Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // cursorHeight: 9,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter Your Name",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // cursorHeight: 9,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter Your Email",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  // cursorHeight: 9,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter Your Password",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // cursorHeight: 9,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter Your Shipping Address",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // cursorHeight: 9,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Enter Your Phone Number",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: selectoption,
                    onChanged: (value) {
                      setState(() {
                        selectoption = value as bool;
                      });
                    },
                  ),
                  Text(
                    'Cash On Delivery',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: selectoption,
                    onChanged: (value) {
                      setState(() {
                        selectoption = value as bool;
                      });
                    },
                  ),
                  // IconButton(
                  //     onPressed: () {}, icon: Image.asset('image/esewa.png'))

                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/esewa.png',
                      height: 50,
                    ),
                    label: Text(
                      "ePay",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // ElevatedButton(
                  // onPressed: () {}, child: Image.asset('iamge/eswea.png'))
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Atmcard(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 103, 222, 235),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text("Order Now"),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? datePicked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2021),
                          lastDate: DateTime(2029));
                      if (datePicked != null) {
                        print(
                            'Date Select :${datePicked.day}-${datePicked.month}-${datePicked.year}');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 103, 222, 235),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("Show Date"),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () async {
                      // Show Date Picker
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2029),
                      );

                      if (datePicked != null) {
                        TimeOfDay? timePicked = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );

                        if (timePicked != null) {
                          DateTime selectedDateTime = DateTime(
                            datePicked.year,
                            datePicked.month,
                            datePicked.day,
                            timePicked.hour,
                            timePicked.minute,
                          );

                          print('Selected DateTime: $selectedDateTime');
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 103, 222, 235),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("Select Date and Time"),
                  )

                  // ElevatedButton(
                  //   onPressed: () async {

                  //     DateTime? datePicked = await showDatePicker(
                  //         context: context,
                  //         initialDate: DateTime.now(),
                  //         firstDate: DateTime(2021),
                  //         lastDate: DateTime(2029));
                  //     if (datePicked != null) {
                  //       print(
                  //           'Date Select :${datePicked.day}-${datePicked.month}-${datePicked.year}');
                  //     }
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //       backgroundColor: Color.fromARGB(255, 103, 222, 235),
                  //       shape: BeveledRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10))),
                  //   child: Text("Show Time"),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
