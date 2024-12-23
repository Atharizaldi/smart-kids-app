import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smart_kids_app/pages/article/components/article_card.dart';
import 'package:smart_kids_app/pages/article/components/carousel_card.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  final List<Map> listArticle = [
    {
      'title': "To The Moon",
      'authorName': 'Shifa Jenifer',
      'authorProfilUrl': 'assets/profile_photo/5.png',
      'bannerUrl':
          'assets/157131-night-sky-night-sky-Moon-stars-starry-night-astronomy-nightscape-dark-moonlight-bright.jpg'
    },
    {
      'title': 'What is Meteor?',
      'authorName': 'Richard Subarkah',
      'authorProfilUrl': 'assets/profile_photo/6.png',
      'bannerUrl': 'assets/article/meteor.jpg'
    },
    {
      'title': 'Amazing Aurora Borealis',
      'authorName': 'Natasha Meilani',
      'authorProfilUrl': 'assets/profile_photo/7.png',
      'bannerUrl': 'assets/article/aurora.jpg'
    },
  ];

  final List<Map> listArticlePopular = [
    {
      'title': "What's Your Sport Story?",
      'authorName': 'Shifa Jenifer',
      'authorProfilUrl': 'assets/profile_photo/5.png',
      'bannerUrl': 'assets/Kids-Playing-Soccer-1.jpg'
    },
    {
      'title': 'The BIggest Turtle in The World',
      'authorName': 'Shifa Emiliana',
      'authorProfilUrl': 'assets/profile_photo/9.png',
      'bannerUrl': 'assets/article/turtle.jpg'
    },
  ];

  final List<Map> listArticleNewest = [
    {
      'title': "Family Time in Waterboom",
      'authorName': 'Meilan Carlos',
      'authorProfilUrl': 'assets/profile_photo/8.png',
      'bannerUrl': 'assets/article/water.jpg'
    },
    {
      'title': 'Play and Learning Together',
      'authorName': 'Erika susilo',
      'authorProfilUrl': 'assets/profile_photo/7.png',
      'bannerUrl': 'assets/article/play.jpg'
    },
  ];
  int _current = 0;
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Articles',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isPortrait ? 17 : 20),
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: isPortrait ? 200 : 200,
            child: Column(
              children: [
                Expanded(
                  child: CarouselSlider(
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                        height: 800,
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
                    items: listArticle.map((i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Builder(
                          builder: (BuildContext context) {
                            return CarouselCard(
                              bannerUrl: i['bannerUrl'],
                              title: i['title'],
                              authorName: i['authorName'],
                              authorProfilUrl: i['authorProfilUrl'],
                            );
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listArticle.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          buttonCarouselController.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
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
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Popular",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: isPortrait ? 17 : 19),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 15, right: 15),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              shrinkWrap: true,
              itemCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ArticleCard(
                  bannerUrl: listArticlePopular[index]['bannerUrl'],
                  title: listArticlePopular[index]['title'],
                  authorName: listArticlePopular[index]['authorName'],
                  authorProfilUrl: listArticlePopular[index]['authorProfilUrl'],
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "The Newest",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: isPortrait ? 17 : 19),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 15, right: 15),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              shrinkWrap: true,
              itemCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ArticleCard(
                  bannerUrl: listArticleNewest[index]['bannerUrl'],
                  title: listArticleNewest[index]['title'],
                  authorName: listArticleNewest[index]['authorName'],
                  authorProfilUrl: listArticleNewest[index]['authorProfilUrl'],
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
