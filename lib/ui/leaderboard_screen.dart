import 'package:flutter/material.dart';

import '../helper/const.dart';
import '../helper/text_styles.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Friend List",
            style: titleTextStyle,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              "Compete!",
              style: descTextStyle,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Leader Board",
            style: subTitleTextStyle.copyWith(
              color: kRedColor,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (ctx, i) {
                return const Divider(
                  color: Colors.white24,
                );
              },
              itemBuilder: (ctx, i) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "${i + 1}. ",
                          style: normalTextStyle,
                        ),
                      ),
                      Text(
                        "${dummyLeaderBoard[i]["name"]}",
                        style: normalTextStyle,
                      ),
                      const Spacer(),
                      Text(
                        "${dummyLeaderBoard[i]["score"]}",
                        style: normalTextStyle.copyWith(
                          color: kRedColor,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.local_fire_department,
                          color: kRedColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: dummyLeaderBoard.length,
            ),
          ),
        ],
      ),
    );
  }
}
