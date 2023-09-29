import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class shareBottomSheet extends StatelessWidget {
  const shareBottomSheet({this.controller, super.key});
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15,
          sigmaY: 15,
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.2),
              ],
            ),
          ),
          height: 425,
          child: _getGridItems(),
        ),
      ),
    );
  }

  Widget _getGridItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 40,
              (context, index) {
                return Container(
                  color: pinkColor,
                );
              },
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ],
      ),
    );
  }
}
