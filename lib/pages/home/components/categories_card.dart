import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorieCard extends StatefulWidget {
  CategorieCard({super.key, required this.urlIcon, required this.title});

  final String urlIcon;
  final String title;

  @override
  State<CategorieCard> createState() => _CategorieCardState();
}

class _CategorieCardState extends State<CategorieCard> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: isPortrait ? 15 : 7, vertical: isPortrait ? 7 : 12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          border:
              Border.all(width: 0.5, color: Color.fromARGB(255, 188, 188, 188)),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(widget.urlIcon),
              height: isPortrait ? 20 : 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: isPortrait ? 12 : 15),
            )
          ],
        ),
      ),
    );
  }
}
