import 'package:flutter/material.dart';
import 'package:myntra/feature/category_page/category_page.dart';
import 'package:myntra/feature/home_page/home_page.dart';
import 'package:myntra/feature/profile_page/profile_page.dart';
import 'package:myntra/foundation/sp_incon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const CategoryPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "logo-black.png",
              index: 0,
              currentIndex: currentIndex,
              isSelected: 0 == currentIndex,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "categories.png",
              index: 1,
              currentIndex: currentIndex,
              isSelected: 1 == currentIndex,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
              index: 2,
              currentIndex: currentIndex,
              isSelected: 2 == currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
