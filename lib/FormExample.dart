import 'package:flutter/material.dart';

class EventAndForms extends StatefulWidget {
  const EventAndForms({super.key});

  @override
  State<EventAndForms> createState() => _EventAndFormsState();
}

class _EventAndFormsState extends State<EventAndForms> {
  final formkey = GlobalKey<FormState>();
  TextEditingController txt1Controller = TextEditingController();
  TextEditingController txt2Controller = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey, // Assign the GlobalKey<FormState> here
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: txt1Controller,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter First Number";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "Enter First Number"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txt2Controller,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Second Number";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "Enter Second Number"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState != null &&
                      formkey.currentState!.validate()) {
                    int no1 = int.parse(txt1Controller.text);
                    int no2 = int.parse(txt2Controller.text);
                    setState(() {
                      result = no1 + no2;
                    });
                  }
                },
                child: Text("Calculate"),
              ),
              Text(
                "The result is: $result",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
