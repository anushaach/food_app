import 'package:flutter/material.dart';

class DateAndTimePicker extends StatefulWidget {
  const DateAndTimePicker({super.key});

  @override
  State<DateAndTimePicker> createState() => _DateAndTimePickerState();
}

class _DateAndTimePickerState extends State<DateAndTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date and time picker",
        ),
      ),
      body: Center(
          child: Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/drink.jpeg",
                          height: 50.0,
                          width: 50.0,
                        ),
                        Text("Rahul Kumar"),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.black12,
                            ),
                            child: Text("bitton"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
