import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CourseDoneCard extends StatelessWidget {
  const CourseDoneCard({
    super.key,
    required this.bannerUrl,
    required this.tile,
  });

  final String bannerUrl;
  final String tile;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 245, 244, 245),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(bannerUrl), fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tile,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "3 hrs 20 mnt ",
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: Text(
                    "100%",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 120, 54, 74)),
                  ),
                  progressColor: Color.fromARGB(255, 120, 54, 74),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "< Course Certificate",
                  style: TextStyle(
                      color: Color.fromARGB(255, 120, 54, 74),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Course Content >",
                  style: TextStyle(
                      color: Color.fromARGB(255, 120, 54, 74),
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
