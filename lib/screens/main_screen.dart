import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';
import 'package:instagram_app/screens/activiti_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/post_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndexBottm = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        height: 83,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            elevation: 20,
            backgroundColor: darkBlueColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 109,
            selectedItemColor: wihtColor,
            unselectedItemColor: const Color.fromARGB(255, 235, 235, 235),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndexBottm,
            onTap: (int index) {
              setState(() {
                _selectedIndexBottm = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/icon_home_notAc.png'),
                activeIcon: Image.asset('assets/images/icon_active_home.png'),
                label: 'A',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/icon_search_navigation.png'),
                activeIcon: Image.asset(
                    'assets/images/icon_search_navigation_active.png'),
                label: 'B',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/icon_add_navigation.png'),
                activeIcon:
                    Image.asset('assets/images/icon_add_navigation_active.png'),
                label: 'C',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/icon_activity_navigation.png'),
                activeIcon: Image.asset(
                    'assets/images/icon_activity_navigation_active.png'),
                label: 'D',
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: grayColor, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(
                      'assets/images/Parsa.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                activeIcon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: pinkColor, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(
                      'assets/images/Parsa.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndexBottm,
        children: _changeScreen(),
      ),
    );
  }
}

List<Widget> _changeScreen() {
  return <Widget>[
    HomeScreen(),
    SerarchScreen(),
    PostScreen(),
    ActivitiScreen(),
    ProfileScreen(),
  ];
}
