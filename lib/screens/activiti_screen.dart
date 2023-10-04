import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivitiScreen extends StatefulWidget {
  const ActivitiScreen({super.key});

  @override
  State<ActivitiScreen> createState() => _ActivitiScreenState();
}

class _ActivitiScreenState extends State<ActivitiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('data'),
        ),
      ),
    );
  }
}
