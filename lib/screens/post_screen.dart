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
            _getHeaderSection(),
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
}
