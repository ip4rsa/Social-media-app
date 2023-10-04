import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';

class ActivitiScreen extends StatefulWidget {
  const ActivitiScreen({super.key});

  @override
  State<ActivitiScreen> createState() => _ActivitiScreenState();
}

class _ActivitiScreenState extends State<ActivitiScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 70,
          color: darkBlueColor,
          child: TabBar(
            controller: _tabController,
            labelStyle: const TextStyle(
              fontFamily: 'GB',
              fontSize: 16,
            ),
            indicatorColor: pinkColor,
            indicatorWeight: 3,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 17),
            tabs: const [
              Tab(
                text: 'You',
              ),
              Tab(
                text: 'Following',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
