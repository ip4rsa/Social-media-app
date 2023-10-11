import 'package:flutter/material.dart';
import 'package:instagram_app/screens/activiti_screen.dart';
import 'package:instagram_app/screens/post_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'constants/colors.dart';

void main() {
  runApp(const InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: wihtColor,
            fontFamily: 'GB',
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
          headline2: TextStyle(
            color: wihtColor,
            fontFamily: 'GB',
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
          headline3: TextStyle(
            color: wihtColor,
            fontFamily: 'SM',
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
          headline4: TextStyle(
            color: wihtColor,
            fontFamily: 'GB',
            fontSize: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            // minimumSize: const Size(129, 46),
            backgroundColor: pinkColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            textStyle: const TextStyle(
              fontFamily: 'GB',
              fontSize: 16,
            ),
          ),
        ),
      ),
      home: ProfileScreen(),
    );
  }
}
