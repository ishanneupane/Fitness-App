import 'package:fitness_app/ui/mainpage.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            const Text(
              "Profile",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Welcome Mate!!",
              style: TextStyle(fontSize: 18, color: Colors.white),
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
