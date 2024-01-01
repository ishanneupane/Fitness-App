import 'dart:developer';

import 'package:flutter/material.dart';

import '../api_client/api_requests.dart';
import '../helper/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    getAlbum();
  }

  getAlbum() async {
    var users = await fetchUsers();
    log("Users: ${users.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage('assets/947a9f1acf2478edc6e97b9a17ef75aa.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Home",
              style: titleTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Welcome to Maaka!!",
                style: descTextStyle.copyWith(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
