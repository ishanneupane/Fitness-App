import 'package:fitness_app/helper/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Insights",
          style: titleTextStyle,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            "Records.  Streaks",
            style: descTextStyle,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: 210,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Streaks.",
                      style: TextStyle(
                          color: Colors.white12,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "current streak",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "76",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Your All time high was 89.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                        //fontWeight: FontWeight.bold),
                        ),
                  ],
                ),
                const Expanded(
                  child: Icon(
                    CupertinoIcons.map_pin_ellipse,
                    color: Colors.red,
                    size: 70,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 210,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Average",
                  style: TextStyle(
                      color: Colors.white12,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Text(
                      "7,622",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "steps per day",
                      style: TextStyle(
                        color: Colors.white12,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Currently you are in second place",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Text("1st: Aushreeya with 8,976",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )
                    //fontWeight: FontWeight.bold),
                    ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: 120,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Average",
                  style: TextStyle(
                      color: Colors.white12,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Text(
                      "622",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "kcals per day",
                      style: TextStyle(
                        color: Colors.white12,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "Recommended calories=",
                      style: TextStyle(
                        color: Colors.white12,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "2200",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
