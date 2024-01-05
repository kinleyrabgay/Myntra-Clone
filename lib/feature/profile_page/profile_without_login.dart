import 'package:flutter/material.dart';
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
          child: const Column(
            children: [
              ProfileItem(
                assetName: 'orders.png',
                title: 'Orders',
                subtitile: 'Track your orders',
                isLast: false,
              ),
              ProfileItem(
                assetName: 'wishlist.png',
                title: 'Help Center',
                subtitile: 'Help regarding your recent purchase',
                isLast: false,
              ),
              ProfileItem(
                assetName: 'wishlist.png',
                title: 'WishList',
                subtitile: 'Your wishlist',
                isLast: true,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          color: AppColor.whiteColor,
          child: const Column(
            children: [
              ProfileItem(
                assetName: 'orders.png',
                title: 'Scan for coupons',
                isLast: false,
              ),
              ProfileItem(
                assetName: 'wishlist.png',
                title: 'Help Center',
                isLast: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
