import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class SerarchScreen extends StatelessWidget {
  const SerarchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17, right: 17, top: 20),
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
                              hintStyle:
                                  TextStyle(color: wihtColor, fontFamily: 'GB'),
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/icon_scan.png'),
                    ],
                  ),
                ),
              ),
              _getCatgoryList()
            ],
          ),
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
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
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
}
