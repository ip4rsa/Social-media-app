import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: Center(
        child: _getStoryBox(),
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(6),
      color: pinkColor,
      dashPattern: [42, 10],
      strokeWidth: 2.3,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 60,
          width: 60,
          color: darkBlueColor,
          child: Image.asset('assets/images/profile.png'),
        ),
      ),
    );
  }

  Widget _getStoryAddBox() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: wihtColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: darkBlueColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Icon(
            CupertinoIcons.plus,
            color: pinkColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
