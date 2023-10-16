import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: darkBlueColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: wihtColor,
        selectedIconTheme: const IconThemeData(size: 30),
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
            activeIcon:
                Image.asset('assets/images/icon_search_navigation_active.png'),
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
        ],
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
    Container(
      color: Color.fromARGB(255, 41, 199, 104),
    ),
    Container(
      color: const Color.fromARGB(255, 177, 45, 45),
    ),
    Container(
      color: Color.fromARGB(255, 228, 182, 43),
    ),
    Container(
      color: Color.fromARGB(255, 94, 103, 225),
    ),
  ];
}
