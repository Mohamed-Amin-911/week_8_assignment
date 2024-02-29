import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
    super.key,
    required this.holding,
    required this.invested,
    required this.available,
  });
  final String holding;
  final String invested;
  final String available;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366 * Sizeconfig.horizontalBlock,
      height: 196 * Sizeconfig.verticalBlock,
      decoration: BoxDecoration(
          color: Pallete.mainColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(top: 27, left: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Portfolio",
              style: appStyle(fw: FontWeight.w700, size: 20)
                  .copyWith(color: Colors.white),
            ),
            SizedBox(height: 18 * Sizeconfig.verticalBlock),
            Text(
              "Holding value",
              style: appStyle(fw: FontWeight.w400, size: 10)
                  .copyWith(color: Colors.white),
            ),
            SizedBox(height: 4 * Sizeconfig.verticalBlock),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$$holding",
                  style: appStyle(fw: FontWeight.w700, size: 28)
                      .copyWith(color: Colors.white),
                ),
                SizedBox(width: 7 * Sizeconfig.horizontalBlock),
                Text(
                  "+13.25%",
                  style: appStyle(fw: FontWeight.w500, size: 14)
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 18 * Sizeconfig.verticalBlock),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invested value",
                      style: appStyle(fw: FontWeight.w400, size: 10)
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "\$$invested",
                      style: appStyle(fw: FontWeight.w500, size: 18)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 12 * Sizeconfig.horizontalBlock),
                Container(
                  width: 1 * Sizeconfig.horizontalBlock,
                  height: 30 * Sizeconfig.verticalBlock,
                  color: const Color.fromARGB(50, 255, 255, 255),
                ),
                SizedBox(width: 12 * Sizeconfig.horizontalBlock),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Available USD",
                      style: appStyle(fw: FontWeight.w400, size: 10)
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "\$$available",
                      style: appStyle(fw: FontWeight.w500, size: 18)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
