import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date ",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    // initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    initialDate: DateTime.now(),
                    lastDate: DateTime(2026));
                if (datePicked != null) {
                  print(
                      'Date Select :${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
              },
              child: Text("Show"),
            ),
          ],
        ),
      ),
    );
  }
}
