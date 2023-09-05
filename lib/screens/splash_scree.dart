import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage('assets/images/pattern 1.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Image.asset('assets/images/Startlogo.png', height: 70),
            ),
            const Positioned(
              bottom: 32,
              child: Column(
                children: [
                  Text('from', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 6),
                  Text('ParsaTesla', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            // SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
