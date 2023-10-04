import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return Center(
                            child: Container(
                              width: 128,
                              height: 128,
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
                            ),
                          );
                        },
                        childCount: 12,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getHeaderSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
      child: Row(
        children: [
          Text(
            'Post',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 17,
              color: wihtColor,
            ),
          ),
          const SizedBox(width: 15),
          Image.asset('assets/images/icon_arow_bottn.png'),
          const Spacer(),
          Text(
            'Next',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 17,
              color: wihtColor,
            ),
          ),
          const SizedBox(width: 15),
          Image.asset('assets/images/icon_arow_right.png'),
        ],
      ),
    );
  }

  Widget _getSelectedPhoto() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
      child: Container(
        height: 394,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Image.asset(
            'assets/images/item1.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
