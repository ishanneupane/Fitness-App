import 'package:fitness_app/helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Goals",
            style: titleTextStyle,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              "SET THEM...GET THEM",
              style: descTextStyle,
            ),
          ),
          const SizedBox(height: 20),
          containerDecor('10000', 'steps', Icons.send),
          const SizedBox(height: 20),
          containerDecor('300', 'kcals', CupertinoIcons.flame),
          const SizedBox(height: 20),
          containerDecor('5.0', 'km', Icons.arrow_forward),
          const SizedBox(height: 20),
          containerDecor('60', 'Mins', Icons.timelapse),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  containerDecor(String name, String des, dynamic icons) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: const BorderRadius.all(Radius.circular(18))),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.remove_circle,
            color: Colors.blue,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: 26.0),
              ),
              Row(
                children: [
                  Icon(
                    icons,
                    color: Colors.grey,
                  ),
                  Text(des,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      )),
                ],
              ),
            ],
          ),
          const Icon(
            Icons.add_circle,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
