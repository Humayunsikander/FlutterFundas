import 'package:flutter/material.dart';
import 'package:untitled/pages/first_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greetingWithName = "";
  TextEditingController nameController = TextEditingController();

  void greetWithName(String name) {
    setState(() {
      greetingWithName = "Hey, ${nameController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name..."
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  greetWithName(nameController.text);
                },
                child: Text("Greeting")),
            Text(greetingWithName)
          ],
        ),
      ),
    );
  }
}
