import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:smart_kids_app/pages/home/components/categories_card.dart';
import 'package:smart_kids_app/pages/home/components/courses_card.dart';
import 'package:smart_kids_app/pages/home/components/instructors_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isReady = false;
  final TextEditingController _searchController = TextEditingController();
  final List<String> imagesBanner = [
    "assets/banner/1.png",
    "assets/banner/2.png",
    "assets/banner/3.png"
  ];
  final List<Map> listcategory = [
    {'name': 'Graphic', 'asset': 'assets/icons/graphic.png'},
    {'name': 'Writing', 'asset': 'assets/icons/letter_1027530.png'},
    {'name': 'Programming', 'asset': 'assets/icons/coding_1006363.png'},
    {'name': 'UX/UX', 'asset': 'assets/icons/ui_7858975.png'},
    {'name': 'Fashion', 'asset': 'assets/icons/dress_3050253.png'}
  ];
  final List<Map> listCourse = [
    {
      'name': 'App Development',
      'profilName': 'Shifa Jenifer',
      'profilUrl': 'assets/profile_photo/5.png',
      'imageUrl': 'assets/226382.jpg'
    },
    {
      'name': 'Painting Class',
      'profilName': 'Richard Subarkah',
      'profilUrl': 'assets/profile_photo/6.png',
      'imageUrl': 'assets/course/painting.jpg'
    },
    {
      'name': 'Graphic Design Class',
      'profilName': 'Natasha Meilani',
      'profilUrl': 'assets/profile_photo/7.png',
      'imageUrl': 'assets/course/graphic.jpg'
    },
    {
      'name': 'Fashion Design Class',
      'profilName': 'Emiliana Nadilla',
      'profilUrl': 'assets/profile_photo/8.png',
      'imageUrl': 'assets/course/fashion.jpg'
    },
    {
      'name': 'Writing Child Class',
      'profilName': 'Erika Subakti',
      'profilUrl': 'assets/profile_photo/9.png',
      'imageUrl': 'assets/course/writing.jpg'
    },
  ];

  final List<Map> listInstructor = [
    {
      'role': 'Programmer',
      'name': 'Shifa Jenifer',
      'profilUrl': 'assets/profile_photo/5.png',
    },
    {
      'role': 'Artist',
      'name': 'Richard Subarkah',
      'profilUrl': 'assets/profile_photo/6.png',
    },
    {
      'role': 'Graphic Designer',
      'name': 'Natasha Meilani',
      'profilUrl': 'assets/profile_photo/7.png',
    },
    {
      'role': 'Fashion Designer',
      'name': 'Emiliana Nadilla',
      'profilUrl': 'assets/profile_photo/8.png',
    },
    {
      'role': 'Writer',
      'name': 'Erika Subakti',
      'profilUrl': 'assets/profile_photo/9.png',
    },
  ];

  int _current = 0;
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          Logger().w(
              "Ini Orintation ${orientation} Ini media query ${MediaQuery.of(context).orientation}");
          final isPortrait =
              MediaQuery.of(context).orientation == Orientation.portrait;
          Size screenSize = MediaQuery.of(context).size;
          var mediaQueryData = MediaQuery.of(context);
          final double widthScreen = mediaQueryData.size.width;
          final double heightScreen = mediaQueryData.size.height;
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarColor: Colors.white, // Warna hitam dengan opasitas
              statusBarIconBrightness:
                  Brightness.dark, // Sesuaikan brightness ikon status bar
            ),
          );
          Logger().w("Is potrait ${isPortrait}");
          return Scaffold(
              body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: heightScreen * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 245, 245, 245),
                              maxRadius: 25,
                              backgroundImage:
                                  AssetImage('assets/profilephoto.png'),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello Athar",
                                  style: TextStyle(
                                    fontSize: isPortrait ? 20 : 10,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const Text(
                                  "What would you like to learn today?",
                                  style: TextStyle(
                                      fontSize: 11, letterSpacing: -0.2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromARGB(255, 206, 205, 205),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.notifications_none),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromARGB(255, 206, 205, 205),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.bookmark_border),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: "Search Course",
                              prefixIcon: const Icon(Icons.search),
                              contentPadding: EdgeInsets.only(top: 25),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 243, 243, 243),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(11),
                                  ),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 120, 54, 74),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 206, 205, 205),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(11),
                              child: const Icon(Icons.filter_alt_sharp,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isPortrait ? 17 : 20),
                    ),
                  ),
                  // isPortrait
                  //     ? Padding(
                  //         padding: EdgeInsets.symmetric(horizontal: 15),
                  //         child: Text(
                  //           "Categories",
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold, fontSize: 17),
                  //         ),
                  //       )
                  //     : Padding(
                  //         padding: EdgeInsets.symmetric(horizontal: 15),
                  //         child: Text(
                  //           "Categories",
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold, fontSize: 10),
                  //         ),
                  //       ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: isPortrait ? 50 : 70,
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 15),
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return CategorieCard(
                            urlIcon: listcategory[index]['asset'].toString(),
                            title: listcategory[index]['name'].toString());
                      },
                    ),
                  ),
                  // isPortrait
                  //     ? SizedBox(
                  //         height: 40,
                  //         child: ListView.separated(
                  //           padding: EdgeInsets.only(left: 15),
                  //           separatorBuilder: (context, index) {
                  //             return SizedBox(
                  //               width: 10,
                  //             );
                  //           },
                  //           shrinkWrap: true,
                  //           scrollDirection: Axis.horizontal,
                  //           itemCount: 5,
                  //           itemBuilder: (context, index) {
                  //             return CategorieCard(
                  //                 urlIcon:
                  //                     listcategory[index]['asset'].toString(),
                  //                 title:
                  //                     listcategory[index]['name'].toString());
                  //           },
                  //         ),
                  //       )
                  //     : SizedBox(
                  //         height: 140,
                  //         child: ListView.separated(
                  //           padding: EdgeInsets.only(left: 15),
                  //           separatorBuilder: (context, index) {
                  //             return SizedBox(
                  //               width: 10,
                  //             );
                  //           },
                  //           shrinkWrap: true,
                  //           scrollDirection: Axis.horizontal,
                  //           itemCount: 5,
                  //           itemBuilder: (context, index) {
                  //             return CategorieCard(
                  //                 urlIcon:
                  //                     listcategory[index]['asset'].toString(),
                  //                 title:
                  //                     listcategory[index]['name'].toString());
                  //           },
                  //         ),
                  //       ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: isPortrait ? 190 : 280,
                    child: Column(
                      children: [
                        Expanded(
                          child: CarouselSlider(
                            carouselController: buttonCarouselController,
                            options: CarouselOptions(
                                height: 500,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                autoPlayInterval: const Duration(seconds: 5),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                            items: imagesBanner.map((i) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage(i),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imagesBanner.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => buttonCarouselController
                                  .animateToPage(entry.key),
                              child: Container(
                                width: 8.0,
                                height: 8.0,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black)
                                        .withOpacity(
                                            _current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  // isPortrait
                  //     ? SizedBox(
                  //         height: 140,
                  //         child: Column(
                  //           children: [
                  //             Expanded(
                  //               child: CarouselSlider(
                  //                 carouselController: buttonCarouselController,
                  //                 options: CarouselOptions(
                  //                     height: 500,
                  //                     autoPlay: true,
                  //                     enlargeCenterPage: true,
                  //                     autoPlayInterval:
                  //                         const Duration(seconds: 5),
                  //                     autoPlayAnimationDuration:
                  //                         const Duration(milliseconds: 800),
                  //                     onPageChanged: (index, reason) {
                  //                       setState(() {
                  //                         _current = index;
                  //                       });
                  //                     }),
                  //                 items: imagesBanner.map((i) {
                  //                   return Padding(
                  //                     padding: const EdgeInsets.symmetric(
                  //                         vertical: 5),
                  //                     child: Builder(
                  //                       builder: (BuildContext context) {
                  //                         return Container(
                  //                           decoration: BoxDecoration(
                  //                               color: Colors.amber,
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20)),
                  //                           child: ClipRRect(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(20),
                  //                             child: Image(
                  //                               image: AssetImage(i),
                  //                             ),
                  //                           ),
                  //                         );
                  //                       },
                  //                     ),
                  //                   );
                  //                 }).toList(),
                  //               ),
                  //             ),
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children:
                  //                   imagesBanner.asMap().entries.map((entry) {
                  //                 return GestureDetector(
                  //                   onTap: () => buttonCarouselController
                  //                       .animateToPage(entry.key),
                  //                   child: Container(
                  //                     width: 8.0,
                  //                     height: 8.0,
                  //                     margin: const EdgeInsets.symmetric(
                  //                         vertical: 8.0, horizontal: 4.0),
                  //                     decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: (Theme.of(context)
                  //                                         .brightness ==
                  //                                     Brightness.dark
                  //                                 ? Colors.white
                  //                                 : Colors.black)
                  //                             .withOpacity(_current == entry.key
                  //                                 ? 0.9
                  //                                 : 0.4)),
                  //                   ),
                  //                 );
                  //               }).toList(),
                  //             )
                  //           ],
                  //         ),
                  //       )
                  //     : SizedBox(
                  //         height: 400,
                  //         child: Column(
                  //           children: [
                  //             Expanded(
                  //               child: CarouselSlider(
                  //                 carouselController: buttonCarouselController,
                  //                 options: CarouselOptions(
                  //                     height: 500,
                  //                     autoPlay: true,
                  //                     enlargeCenterPage: true,
                  //                     autoPlayInterval:
                  //                         const Duration(seconds: 5),
                  //                     autoPlayAnimationDuration:
                  //                         const Duration(milliseconds: 800),
                  //                     onPageChanged: (index, reason) {
                  //                       setState(() {
                  //                         _current = index;
                  //                       });
                  //                     }),
                  //                 items: imagesBanner.map((i) {
                  //                   return Padding(
                  //                     padding: const EdgeInsets.symmetric(
                  //                         vertical: 5),
                  //                     child: Builder(
                  //                       builder: (BuildContext context) {
                  //                         return Container(
                  //                           decoration: BoxDecoration(
                  //                               color: Colors.amber,
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20)),
                  //                           child: ClipRRect(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(20),
                  //                             child: Image(
                  //                               image: AssetImage(i),
                  //                             ),
                  //                           ),
                  //                         );
                  //                       },
                  //                     ),
                  //                   );
                  //                 }).toList(),
                  //               ),
                  //             ),
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children:
                  //                   imagesBanner.asMap().entries.map((entry) {
                  //                 return GestureDetector(
                  //                   onTap: () => buttonCarouselController
                  //                       .animateToPage(entry.key),
                  //                   child: Container(
                  //                     width: 8.0,
                  //                     height: 8.0,
                  //                     margin: const EdgeInsets.symmetric(
                  //                         vertical: 8.0, horizontal: 4.0),
                  //                     decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: (Theme.of(context)
                  //                                         .brightness ==
                  //                                     Brightness.dark
                  //                                 ? Colors.white
                  //                                 : Colors.black)
                  //                             .withOpacity(_current == entry.key
                  //                                 ? 0.9
                  //                                 : 0.4)),
                  //                   ),
                  //                 );
                  //               }).toList(),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Popular Courses",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isPortrait ? 17 : 19),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // height: isPortrait
                    //     ? screenSize.height < 700
                    //         ? 280
                    //         : screenSize.height < 900
                    //             ? 260
                    //             : screenSize.height < 1100
                    //                 ? 260
                    //                 : 230
                    //     : 560,
                    height: isPortrait ? 300 : 300,
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listCourse.length,
                      itemBuilder: (context, index) {
                        return CoursesCard(
                          courseName: listCourse[index]['name'],
                          profilName: listCourse[index]['profilName'],
                          profilUrl: listCourse[index]['profilUrl'],
                          imageUrl: listCourse[index]['imageUrl'],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Top Instructors",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isPortrait ? 17 : 19),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: isPortrait ? 180 : 180,
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listInstructor.length,
                      itemBuilder: (context, index) {
                        Logger().w("Selesai nih");
                        return InstructorsCard(
                          name: listInstructor[index]['name'],
                          role: listInstructor[index]['role'],
                          profilUrl: listInstructor[index]['profilUrl'],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ));
        },
      );
}
