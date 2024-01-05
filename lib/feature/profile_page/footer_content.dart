import 'package:flutter/material.dart';
import 'package:myntra/foundation/constants/constants.dart';
import 'package:myntra/foundation/sp_textbutton/sp_button.dart';

class FooterProfile extends StatelessWidget {
  const FooterProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var item in footerItem)
          SPTextButton(
            title: item.title,
            routeName: item.routeName,
          )
      ],
    );
  }
}
