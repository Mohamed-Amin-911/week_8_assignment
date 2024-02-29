import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';
import 'package:week_8_assignment/gen/assets.gen.dart';
import 'package:week_8_assignment/model/user_class.dart';
import 'package:week_8_assignment/controller/provider/user_provider.dart';
import 'package:week_8_assignment/view/widgets/profile_widget.dart';
import 'package:week_8_assignment/view/widgets/user_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> users = Provider.of<UserProvider>(context).getUsers;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserWidget(
                email: users[0].email,
                image: users[0].image,
                name: users[0].name,
                number: users[0].number,
              ),
              SizedBox(height: 34 * Sizeconfig.verticalBlock),
              ProfileListWidget(
                icon: Assets.icons.history,
                text: "History",
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              const Divider(
                height: 1,
                color: Pallete.bottomIconColor,
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              ProfileListWidget(
                icon: Assets.icons.bank,
                text: "Bank Details",
              ),
              SizedBox(height: 50 * Sizeconfig.verticalBlock),
              ProfileListWidget(
                icon: Assets.icons.notification,
                text: "Notifications",
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              const Divider(
                height: 1,
                color: Pallete.bottomIconColor,
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              ProfileListWidget(
                icon: Assets.icons.security,
                text: "Security",
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              const Divider(
                height: 1,
                color: Pallete.bottomIconColor,
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              ProfileListWidget(
                icon: Assets.icons.help,
                text: "Help and Support",
              ),
              SizedBox(height: 50 * Sizeconfig.verticalBlock),
              ProfileListWidget(
                icon: Assets.icons.terms,
                text: "Terms and conditions",
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              const Divider(
                height: 1,
                color: Pallete.bottomIconColor,
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.logout),
                  SizedBox(width: 12.07 * Sizeconfig.horizontalBlock),
                  Text(
                    "Logout",
                    style: appStyle(fw: FontWeight.w400, size: 18)
                        .copyWith(color: Pallete.textColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
