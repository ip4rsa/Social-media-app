import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode neghban1 = FocusNode();
  FocusNode neghban2 = FocusNode();

  @override
  void initState() {
    super.initState();
    neghban1.addListener(() {
      setState(() {});
    });
    neghban2.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            _containerImage(),
            _containerBox(),
          ],
        ),
      ),
    );
  }

  Widget _containerImage() {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      top: 80,
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/rocket2 1.png')),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _containerBox() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: darkBlueColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(23),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: TextStyle(
                        color: wihtColor,
                        fontFamily: 'GB',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Image.asset('assets/images/minilogo 1.png')
                  ],
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextField(
                    focusNode: neghban1,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(17),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: neghban1.hasFocus ? pinkColor : wihtColor,
                          fontFamily: 'GB'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(17),
                        ),
                        borderSide: BorderSide(width: 3, color: wihtColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        borderSide: BorderSide(width: 3, color: pinkColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextField(
                    focusNode: neghban2,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(17),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: neghban2.hasFocus ? pinkColor : wihtColor,
                          fontFamily: 'GB'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(17),
                        ),
                        borderSide: BorderSide(width: 3, color: wihtColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(17)),
                        borderSide: BorderSide(width: 3, color: pinkColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
