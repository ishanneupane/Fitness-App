import 'package:flutter/material.dart';

import 'mainpage.dart';

class CreateGroupScreen extends StatelessWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Create Group",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "First Step To develop yourself together !!!",
              style: TextStyle(fontSize: 18, color: Colors.white24),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Groupname",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "abc@gmail.com",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Firstname",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "abc@gmail.com",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "abc@gmail.com",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "**********",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightGreenAccent)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
                child: const Text(
                  'Done',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
