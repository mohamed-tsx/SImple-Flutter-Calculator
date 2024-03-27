import 'package:flutter/material.dart';

class EventAndForms extends StatefulWidget {
  const EventAndForms({super.key});

  @override
  State<EventAndForms> createState() => _EventAndFormsState();
}

class _EventAndFormsState extends State<EventAndForms> {
  final formkey = GlobalKey<FormState>();
  TextEditingController txt1Controller = new TextEditingController();
  TextEditingController txt2Controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter First Number"),
              controller: txt1Controller,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter Second Number"),
              controller: txt2Controller,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () => {}, child: Text("Calculate")),
            Text(
              "The result is: ",
              style: TextStyle(fontSize: 20),
            )
          ],
        )),
      ),
    );
  }
}
