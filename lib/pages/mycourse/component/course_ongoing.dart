import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CourseOngoingCard extends StatelessWidget {
  const CourseOngoingCard({
    super.key,
    required this.title,
    required this.bannerUrl,
    required this.percentageText,
    required this.percentage,
    this.color,
  });

  final String title;
  final String bannerUrl;
  final String percentageText;
  final double percentage;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 245, 244, 245),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
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
                        title,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "6 Lesson Left",
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
              percent: percentage,
              center: Text(
                percentageText,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              progressColor: color,
            )
          ],
        ),
      ),
    );
  }
}
