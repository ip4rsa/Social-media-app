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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.back_hand_rounded),
            label: 'B',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.air),
            label: 'C',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
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
