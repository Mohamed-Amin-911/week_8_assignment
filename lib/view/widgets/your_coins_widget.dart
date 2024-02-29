import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';

class YourCoinsWidget extends StatelessWidget {
  const YourCoinsWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.image1,
    required this.image2,
    required this.text2Color,
  });
  final String image1;
  final String image2;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Color text2Color;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image1),
                SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: appStyle(fw: FontWeight.w400, size: 14)
                          .copyWith(color: Pallete.textColor),
                    ),
                    Text(
                      text2,
                      style: appStyle(fw: FontWeight.w400, size: 13)
                          .copyWith(color: Pallete.bottomIconColor),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(width: 58 * Sizeconfig.horizontalBlock),
            Image.asset(image2),
            // SizedBox(width: 22 * Sizeconfig.horizontalBlock),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text3,
                  style: appStyle(fw: FontWeight.w400, size: 15)
                      .copyWith(color: Pallete.textColor),
                ),
                Text(
                  text4,
                  style: appStyle(fw: FontWeight.w700, size: 10)
                      .copyWith(color: text2Color),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
