import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_kids_app/pages/mycourse/component/course_done.dart';
import 'package:smart_kids_app/pages/mycourse/component/course_ongoing.dart';

final List<Map> listCourseOngoing = [
  {
    'title': 'App Development',
    'percentageText': '70%',
    'percentage': 0.7,
    'bannerUrl': 'assets/226382.jpg',
    'color': Colors.amber
  },
  {
    'title': 'Painting Class',
    'percentageText': '80%',
    'percentage': 0.8,
    'bannerUrl': 'assets/course/painting.jpg',
    'color': Colors.green
  },
  {
    'title': 'Graphic Design Class',
    'percentageText': '50%',
    'percentage': 0.5,
    'bannerUrl': 'assets/course/graphic.jpg',
    'color': Colors.amber
  },
  {
    'title': 'Fashion Design Class',
    'percentageText': '10%',
    'percentage': 0.1,
    'bannerUrl': 'assets/course/fashion.jpg',
    'color': Colors.red
  },
];

final List<Map> listCourseDone = [
  {
    'title': 'App Development',
    'bannerUrl': 'assets/226382.jpg',
  },
  {
    'title': 'Painting Class',
    'bannerUrl': 'assets/course/painting.jpg',
  },
  {
    'title': 'Graphic Design Class',
    'bannerUrl': 'assets/course/graphic.jpg',
  },
];

class MycoursePage extends StatefulWidget {
  const MycoursePage({super.key});

  @override
  State<MycoursePage> createState() => _MycoursePageState();
}

class _MycoursePageState extends State<MycoursePage> {
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Courses',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isPortrait ? 17 : 19),
              )),
          SizedBox(
            height: 20,
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 250, 250, 251),
                        border: Border.all(
                          width: 0.5,
                          color: const Color.fromARGB(255, 206, 206, 206),
                        )),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 220, 226),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.black,
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        const Tab(
                          text: "On Going (4)",
                        ),
                        const Tab(
                          text: "Completed (3)",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: isPortrait ? 600 : 600,
                  child: TabBarView(children: [
                    _ongoing(),
                    _finished(),
                    // MyPostTab(),
                    // MyReelsTab(),
                    // MyTagTab(),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _ongoing() {
  return SizedBox(
    child: ListView.separated(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
        );
      },
      shrinkWrap: true,
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CourseOngoingCard(
          title: listCourseOngoing[index]['title'],
          bannerUrl: listCourseOngoing[index]['bannerUrl'],
          percentageText: listCourseOngoing[index]['percentageText'],
          percentage: listCourseOngoing[index]['percentage'],
          color: listCourseOngoing[index]['color'],
        );
      },
    ),
  );
}

Widget _finished() {
  return SizedBox(
    child: ListView.separated(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
        );
      },
      shrinkWrap: true,
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CourseDoneCard(
          tile: listCourseDone[index]['title'],
          bannerUrl: listCourseDone[index]['bannerUrl'],
        );
      },
    ),
  );
}
