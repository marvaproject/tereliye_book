import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:the_tereliye_book_new/screen/home_screen.dart';
import 'package:the_tereliye_book_new/screen/search_screen.dart';
import 'package:the_tereliye_book_new/screen/setting_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<NavigationBarScreen> {
  int index = 0;
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(21, 0, 0, 0),
                blurRadius: 10,
                spreadRadius: 5)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: GNav(
            selectedIndex: 0,
            haptic: true,
            duration: const Duration(milliseconds: 500),
            onTabChange: (index) {
              setState(() {
                this.index = index;
              });
            },
            gap: 8,
            tabBorderRadius: 15,
            backgroundColor: Colors.white,
            color: Colors.grey[350],
            activeColor: const Color.fromARGB(255, 37, 89, 101),
            tabBackgroundColor: const Color.fromARGB(255, 239, 243, 244),
            padding: const EdgeInsets.all(12),
            tabs: const [
              GButton(
                icon: Icons.menu_book_rounded,
                iconSize: 20,
                textStyle: TextStyle(
                  fontFamily: "Lora",
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 37, 89, 101),
                ),
                text: 'Home',
              ),
              GButton(
                icon: Icons.explore_rounded,
                iconSize: 20,
                textStyle: TextStyle(
                  fontFamily: "Lora",
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 37, 89, 101),
                ),
                text: 'Explore',
              ),
              GButton(
                icon: Icons.device_hub_rounded,
                iconSize: 20,
                textStyle: TextStyle(
                  fontFamily: "Lora",
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 37, 89, 101),
                ),
                text: 'About',
              )
            ],
          ),
        ),
      ),
    );
  }
}
