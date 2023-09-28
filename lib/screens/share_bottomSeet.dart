import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shareBottomSheet extends StatelessWidget {
  const shareBottomSheet({super.key});

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
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 40,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 33,
          mainAxisSpacing: 33,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
          );
        },
      ),
    );
  }
}
