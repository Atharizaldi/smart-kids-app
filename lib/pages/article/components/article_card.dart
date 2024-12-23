import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: isPortrait ? 70 : 70,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 120, 54, 74),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "Category",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: isPortrait ? 10 : 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  child: Text(
                    title,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: isPortrait ? 15 : 15,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 245, 245, 245),
                          maxRadius: isPortrait ? 15 : 15,
                          backgroundImage: AssetImage(authorProfilUrl),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          authorName,
                          style: TextStyle(
                            fontSize: isPortrait ? 11 : 11,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "12 Hours a go",
                      style: TextStyle(
                        fontSize: isPortrait ? 11 : 11,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(bannerUrl), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
