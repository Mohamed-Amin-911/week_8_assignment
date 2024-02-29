import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.name,
    required this.image,
    required this.email,
    required this.number,
  });
  final String name;
  final String image;
  final String email;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366 * Sizeconfig.horizontalBlock,
      height: 209 * Sizeconfig.verticalBlock,
      decoration: const BoxDecoration(
          color: Pallete.mainColor,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(height: 20 * Sizeconfig.verticalBlock),
          Image.asset(
            image,
            width: 88,
            height: 88,
          ),
          SizedBox(height: 10 * Sizeconfig.verticalBlock),
          Text(
            name,
            style: appStyle(fw: FontWeight.w700, size: 20)
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: 10 * Sizeconfig.verticalBlock),
          Text(
            email,
            style: appStyle(fw: FontWeight.w500, size: 12)
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: 10 * Sizeconfig.verticalBlock),
          Text(
            number,
            style: appStyle(fw: FontWeight.w400, size: 12)
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
