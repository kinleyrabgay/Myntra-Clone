import 'package:flutter/material.dart';
import 'package:myntra/feature/profile_page/profile_without_login.dart';
import 'package:myntra/foundation/theme/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const ProfileWithoutLogin(),
    );
  }
}
