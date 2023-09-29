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
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: 67,
                        height: 6,
                        decoration: BoxDecoration(
                          color: wihtColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Share',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: wihtColor,
                          ),
                        ),
                        Image.asset('assets/images/icon_share.png'),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Container(
                      width: 340,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Image.asset('assets/images/icon_search.png'),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 7),
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: ' Search User',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 40,
                  (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Image.asset('assets/images/Parss2.JPEG'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Parsa',
                          style: TextStyle(color: wihtColor, fontFamily: 'GM'),
                        ),
                      ],
                    );
                  },
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 100,
                ),
              ),
              const SliverPadding(padding: EdgeInsets.only(bottom: 100)),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Send"),
          ),
        )
      ],
    );
  }
}
