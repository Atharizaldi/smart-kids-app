import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> imagesBanner = [
    "assets/banner/1.png",
    "assets/banner/1.png",
    "assets/banner/1.png"
  ];
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: heightScreen * 0.1,
              left: widthScreen * 0.07,
              right: widthScreen * 0.07),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: isPortrait ? 100 : 100,
                    height: isPortrait ? 100 : 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.green,
                      image: const DecorationImage(
                          image: AssetImage('assets/profilephoto.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Athar Rizaldi",
                    style: TextStyle(
                        fontSize: isPortrait ? 20 : 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: isPortrait ? 170 : 280,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Image(
                    image: AssetImage("assets/banner/4665 (1).png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: isPortrait ? 90 : 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 241, 234, 236),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.grey,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: const AssetImage("assets/icons/1.png"),
                              height: isPortrait ? 65 : 80),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Text(
                              "Certificates",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: isPortrait ? 15 : 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: isPortrait ? 90 : 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 241, 234, 236),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.grey,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: const AssetImage("assets/icons/2.png"),
                              height: isPortrait ? 65 : 80),
                          Expanded(
                            child: Text(
                              "Courses",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: isPortrait ? 15 : 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: isPortrait ? 10 : 20,
              ),
              Container(
                height: isPortrait ? 90 : 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 241, 234, 236),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.grey,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isPortrait ? 10 : 10),
                      child: Image(
                          image: const AssetImage("assets/icons/3.png"),
                          height: isPortrait ? 50 : 80),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: isPortrait ? 10 : 10,
                          left: isPortrait ? 10 : 10),
                      child: Text(
                        "Leadership",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: isPortrait ? 20 : 20),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: isPortrait ? 10 : 20,
              ),
              Container(
                height: isPortrait ? 90 : 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 241, 234, 236),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.grey,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isPortrait ? 10 : 10),
                      child: Image(
                          image: const AssetImage("assets/icons/4.png"),
                          height: isPortrait ? 50 : 80),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: isPortrait ? 10 : 10,
                          left: isPortrait ? 10 : 10),
                      child: Text(
                        "History",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: isPortrait ? 20 : 20),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
