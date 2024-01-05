import 'package:flutter/material.dart';
import 'package:myntra/feature/profile_page/footer_content.dart';
import 'package:myntra/foundation/constants/constants.dart';
import 'package:myntra/foundation/profile/profile_item.dart';
import 'package:myntra/foundation/theme/colors.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});

  final double topContainerHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerHeight,
          child: Column(
            children: [
              Container(
                height: topContainerHeight * .58,
                color: AppColor.dummyBGColor,
              ),
              Container(
                height: topContainerHeight * .42,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              for (var item in items)
                ProfileItem(
                  assetName: item.assetName,
                  title: item.title,
                  subtitile: item.subtitle,
                  isLast: item.isLast,
                ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              for (var item in backup)
                ProfileItem(
                  assetName: item.assetName,
                  title: item.title,
                  subtitile: item.subtitle,
                  isLast: item.isLast,
                ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          child: FooterProfile(),
        )
      ],
    );
  }
}
