import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructorsCard extends StatefulWidget {
  InstructorsCard({
    super.key,
    required this.profilUrl,
    required this.name,
    required this.role,
  });

  final String profilUrl;
  final String name;
  final String role;

  @override
  State<InstructorsCard> createState() => _InstructorsCardState();
}

class _InstructorsCardState extends State<InstructorsCard> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SizedBox(
        child: Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: isPortrait ? 60 : 60),
          child: Container(
            width: isPortrait ? 150 : 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 234, 234),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(top: isPortrait ? 25 : 30, left: 5, right: 5),
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isPortrait ? 14 : 14),
                  ),
                  Text(
                    widget.role,
                    style: TextStyle(
                        letterSpacing: 0,
                        fontSize: isPortrait ? 11 : 11,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "5 Course & 10 Article",
                    style: TextStyle(
                        letterSpacing: 0,
                        fontSize: isPortrait ? 11 : 11,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 99, 99, 99)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.groups,
                              size: isPortrait ? 16 : 20,
                              color: Color.fromARGB(255, 120, 54, 74),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "3200",
                              style: TextStyle(fontSize: isPortrait ? 10 : 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 1,
                              itemSize: isPortrait ? 20.0 : 20.0,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: isPortrait ? 10 : 10,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: isPortrait ? 150 : 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage(widget.profilUrl), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
