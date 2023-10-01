import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app/constants/colors.dart';

class SerarchScreen extends StatelessWidget {
  const SerarchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: _getSearchBox(),
                  ),
                  SliverToBoxAdapter(
                    child: _getCatgoryList(),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
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
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          QuiltedGridTile(2, 1),
                          QuiltedGridTile(2, 2),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCatgoryList() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(39, 43, 64, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              margin: const EdgeInsets.only(left: 12, right: 12),
              height: 30,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Text(
                    'Parsa $index',
                    style: TextStyle(
                      color: wihtColor,
                      fontFamily: 'GM',
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _getSearchBox() {
    return Container(
      margin: const EdgeInsets.only(left: 17, right: 17, top: 20),
      width: 340,
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(39, 43, 64, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Image.asset('assets/images/icon_search.png'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: ' Search',
                    hintStyle: TextStyle(color: wihtColor, fontFamily: 'GB'),
                  ),
                ),
              ),
            ),
            Image.asset('assets/images/icon_scan.png'),
          ],
        ),
      ),
    );
  }
}
