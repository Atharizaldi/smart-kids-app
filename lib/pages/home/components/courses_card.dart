import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesCard extends StatefulWidget {
  const CoursesCard({
    super.key,
    required this.courseName,
    required this.profilName,
    required this.profilUrl,
    required this.imageUrl,
  });

  final String courseName;
  final String profilName;
  final String profilUrl;
  final String imageUrl;

  @override
  State<CoursesCard> createState() => _CoursesCardState();
}

class _CoursesCardState extends State<CoursesCard> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: UnconstrainedBox(
        child: Container(
          width: isPortrait ? 240 : 270,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: isPortrait ? 110 : 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        width: 110,
                        height: isPortrait ? 20 : 20,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 211, 154, 63),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Aages (10 : 13)",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.courseName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 245, 245, 245),
                          maxRadius: isPortrait ? 15 : 15,
                          backgroundImage: AssetImage(widget.profilUrl),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.profilName,
                          style: TextStyle(
                            fontSize: isPortrait ? 10 : 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          ignoreGestures: true,
                          itemCount: 5,
                          itemSize: isPortrait ? 20.0 : 20.0,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.5 (129)",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 120, 54, 74),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "Best Seller",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isPortrait ? 12 : 12),
                            ),
                          ),
                        ),
                        Text(
                          "Rp. 500.000",
                          style: TextStyle(
                              color: Color.fromARGB(255, 120, 54, 74),
                              fontSize: isPortrait ? 15 : 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
