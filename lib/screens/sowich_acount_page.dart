import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class SowichAcount extends StatelessWidget {
  const SowichAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlueColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/switch_account_background.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 220,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 6.0,
                        sigmaY: 6.0,
                      ),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/profile.png'),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: Text(
                                'ParsaSajjadian',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                            ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {},
                              child: const Text('Confirm'),
                            ),
                            const SizedBox(height: 32),
                            Text(
                              'switch account',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 145, bottom: 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?  /  ',
                  style: TextStyle(color: grayColor, fontFamily: 'GB'),
                ),
                Text(
                  'sign Up',
                  style: TextStyle(
                      color: wihtColor, fontSize: 18, fontFamily: 'GB'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
