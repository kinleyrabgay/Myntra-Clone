import 'package:flutter/material.dart';
import 'package:myntra/foundation/theme/colors.dart';

class SPTextButton extends StatelessWidget {
  const SPTextButton({super.key, required this.title, required this.routeName});

  final String title;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          // print('Route Name: $routeName');
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53.0, vertical: 15),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColor.textColor1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
