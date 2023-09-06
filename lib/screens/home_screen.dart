import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: darkBlueColor,
        title: Image.asset('assets/images/moodinger_logo.png', height: 24),
        actions: [Image.asset('assets/images/Group 39.png')],
      ),
      backgroundColor: darkBlueColor,
      body: Center(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  _getPosterHeader(context),
                  const SizedBox(height: 15),
                  _getPoster(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _getPoster() {
    return Container(
      width: 394,
      height: 440,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                'assets/images/Rectangle 17.png',
                height: 360,
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Image.asset('assets/images/Vector.png'),
          ),
          Positioned(
            bottom: 52,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  width: 320,
                  height: 46,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(84, 198, 198, 198),
                          Color.fromARGB(59, 255, 255, 255),
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/Vector (1).png'),
                          const SizedBox(width: 6),
                          const Text(
                            '4.8 k',
                            style: TextStyle(
                              fontFamily: "GB",
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                              height: 16 / 14,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/Group 43.png'),
                          const SizedBox(width: 6),
                          const Text(
                            '1.6 k',
                            style: TextStyle(
                              fontFamily: "GB",
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255),
                              height: 16 / 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Image.asset('assets/images/Group 44.png'),
                      Image.asset('assets/images/Vector (2).png'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getPosterHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        children: [
          _getStoryBox(),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('ParsaSajjadian',
                  style: Theme.of(context).textTheme.headline2),
              const SizedBox(height: 4),
              Text('پارسا سجادیان برنامه نویس',
                  style: Theme.of(context).textTheme.headline3),
            ],
          ),
          const Spacer(),
          Icon(CupertinoIcons.ellipsis_vertical, color: wihtColor)
        ],
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(17),
      padding: const EdgeInsets.all(6),
      color: pinkColor,
      dashPattern: const [42, 10],
      strokeWidth: 2.3,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 40,
          width: 40,
          color: darkBlueColor,
          child: Image.asset('assets/images/Parsa.png'),
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
