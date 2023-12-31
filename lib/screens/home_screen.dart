import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';
import 'package:instagram_app/screens/share_bottomSeet.dart';

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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: _storysBox()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      _getPosterHeader(context),
                      const SizedBox(height: 15),
                      _getPoster(context)
                    ],
                  ),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget _getPostsList() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              const SizedBox(height: 15),
              _getPosterHeader(context),
              const SizedBox(height: 15),
              _getPoster(context)
            ],
          ),
        );
      },
    );
  }

  Widget _getPoster(BuildContext context) {
    return Container(
      width: 394,
      height: 440,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'assets/images/post1-1.png',
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
                      ],
                    ),
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
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: DraggableScrollableSheet(
                                  initialChildSize: 0.45,
                                  maxChildSize: 0.7,
                                  minChildSize: 0.3,
                                  builder: (context, scrollController) =>
                                      shareBottomSheet(
                                          controller: scrollController),
                                ),
                              ),
                            );
                          },
                          child: Image.asset('assets/images/Group 44.png')),
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
    return Row(
      children: [
        _getStoryBox(40, 40),
        const SizedBox(width: 2),
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
    );
  }

  Widget _getStoryBox(double sizeH, double sizeW) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, top: 2),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(17),
            padding: const EdgeInsets.all(7),
            color: pinkColor,
            dashPattern: const [42, 10],
            strokeWidth: 2.3,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: sizeH,
                width: sizeW,
                color: darkBlueColor,
                child: Image.asset(
                  'assets/images/Parsa.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Parsa',
            style: TextStyle(color: wihtColor, fontFamily: 'GM'),
          ),
        ],
      ),
    );
  }

  Widget _getStoryAddBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: wihtColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(17),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 80,
                height: 80,
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
          ),
          const SizedBox(height: 10),
          Text(
            'Your Story',
            style: TextStyle(color: wihtColor, fontFamily: 'GM'),
          ),
        ],
      ),
    );
  }

  Widget _storysBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 12,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0 ? _getStoryAddBox() : _getStoryBox(60, 60);
          },
        ),
      ),
    );
  }
}
