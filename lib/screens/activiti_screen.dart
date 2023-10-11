import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/colors.dart';
import 'package:instagram_app/model/enums/activitiEnum.dart';

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
      backgroundColor: darkBlueColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "ToDay",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'GB',
                              color: wihtColor,
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRow(ActivitiStatus.likes);
                        }, childCount: 2),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "New",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'GB',
                              color: wihtColor,
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRow(ActivitiStatus.fallowBack);
                        }, childCount: 4),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "this wieek",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'GB',
                              color: wihtColor,
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRow(ActivitiStatus.fallowing);
                        }, childCount: 3),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRow(ActivitiStatus.fallowBack);
                        }, childCount: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRow(ActivitiStatus status) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: pinkColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/Parsa.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Parsa Sajjadian',
                    style: TextStyle(
                      fontFamily: 'GB',
                      color: wihtColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Started following',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(0xffC5C5C5),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Text(
                    "you",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'GM',
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC5C5C5)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "3min",
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'GM',
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC5C5C5)),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          _getActivitiRowItems(status)
        ],
      ),
    );
  }

  Widget _getActivitiRowItems(ActivitiStatus status) {
    switch (status) {
      case ActivitiStatus.fallowing:
        return OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: wihtColor, width: 2),
              shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
          child: Text(
            'Massage',
            style: TextStyle(fontSize: 11, color: wihtColor),
          ),
        );
      case ActivitiStatus.fallowBack:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text('Fallow'),
        );
      case ActivitiStatus.likes:
        return SizedBox(
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset('assets/images/item4.png', fit: BoxFit.cover),
          ),
        );
      default:
        return const Text('Erore');
    }
  }
}
