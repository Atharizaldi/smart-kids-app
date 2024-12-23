import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
    required this.title,
    required this.authorName,
    required this.authorProfilUrl,
    required this.bannerUrl,
  });

  final String title;
  final String authorName;
  final String authorProfilUrl;
  final String bannerUrl;

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      width: 600,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: AssetImage(bannerUrl), fit: BoxFit.cover)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: isPortrait ? 80 : 80,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 120, 54, 74),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "Space",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: isPortrait ? 11 : 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: isPortrait ? 18 : 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 245, 245, 245),
                          maxRadius: isPortrait ? 15 : 15,
                          backgroundImage: AssetImage(authorProfilUrl),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          authorName,
                          style: TextStyle(
                              fontSize: isPortrait ? 10 : 10,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
