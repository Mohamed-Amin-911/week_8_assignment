import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/image_assets.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 366 * Sizeconfig.horizontalBlock,
            height: 141 * Sizeconfig.verticalBlock,
            decoration: BoxDecoration(
                color: Pallete.mainColor,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(top: 17, left: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Giorgi,",
                    style: appStyle(fw: FontWeight.w400, size: 12)
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 16 * Sizeconfig.verticalBlock),
                  Text(
                    "Make your first investment today",
                    style: appStyle(fw: FontWeight.w700, size: 15)
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 27 * Sizeconfig.verticalBlock),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        "Invest Today",
                        style: appStyle(fw: FontWeight.w500, size: 12)
                            .copyWith(color: Pallete.mainColor),
                      ))
                ],
              ),
            )),
        const Positioned(
            top: 6,
            left: 283,
            child: Image(image: AssetImage(ImageAsset.bitcoin1))),
        const Positioned(
            top: 87.72,
            left: 218.56,
            child: Image(image: AssetImage(ImageAsset.ethereum1))),
      ],
    );
  }
}
