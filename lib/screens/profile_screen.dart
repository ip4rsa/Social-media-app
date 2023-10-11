import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: pinkColor, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Image.asset(
                      'assets/images/Parsa.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'پارسا سجادیان',
                      style: TextStyle(
                          fontFamily: 'SM', fontSize: 12, color: wihtColor),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'ParsaSajjadian',
                      style: TextStyle(
                          fontFamily: 'GM', fontSize: 12, color: grayColor),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/images/icon_edit.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
