import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 14.09 * Sizeconfig.horizontalBlock),
            Text(
              text,
              style: appStyle(fw: FontWeight.w400, size: 18)
                  .copyWith(color: Pallete.textColor),
            )
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Pallete.bottomIconColor,
        )
      ],
    );
  }
}
