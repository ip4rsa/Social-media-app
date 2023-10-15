import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                // pinned: true,
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 17, top: 17),
                    child: Icon(Icons.menu),
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(14),
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: darkBlueColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
                backgroundColor: darkBlueColor,
                expandedHeight: 170,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/item4.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: _getHeaderprofile(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: TabBarViewDelegate(
                  TabBar(
                    indicatorColor: pinkColor,
                    indicatorWeight: 3,
                    physics: BouncingScrollPhysics(),
                    tabs: [
                      Tab(
                        icon: Image.asset('assets/images/icon_phpto.png'),
                      ),
                      Tab(
                        icon: Image.asset('assets/images/icon_saved.png'),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 20,
                    ),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                'assets/images/item$index.png',
                              ),
                            ),
                          ),
                        );
                      }, childCount: 18),
                      gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 3,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 20,
                    ),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                'assets/images/item$index.png',
                              ),
                            ),
                          ),
                        );
                      }, childCount: 18),
                      gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 1,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          QuiltedGridTile(1, 1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getHeaderprofile() {
    return Padding(
      padding: const EdgeInsets.only(right: 17, left: 17, bottom: 25),
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
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: darkBlueColor,
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
