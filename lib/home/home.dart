import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/home/project/project.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/utils/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Portfolio'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_rounded,
              color: PortfolioColors.primaryColor,
            ),
            onPressed: () {
              // Navigator.pushNamed(context, '/settings');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: PortfolioColors.primaryColor,
            ),
            onPressed: () {
              // Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: PortfolioColors.primaryColor,
          labelColor: PortfolioColors.primaryColor,
          isScrollable: false,
          labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          tabs: [
            Tab(
              text: 'Project',
            ),
            Tab(
              text: 'Saved',
            ),
            Tab(
              text: 'Shared',
            ),
            Tab(
              text: 'Achievement',
            ),
          ],
        ),
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          controller: _tabController,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const ProjectScreen(),
            Container(
              // color: Colors.white,
              width: 420.w,
              height: 840.h,
              // child: const Text('Tab 2'),
            ),
            Container(
              // color: Colors.white,
              width: 420.w,
              height: 840.h,
              // child: const Text('Tab 3'),
            ),
            Container(
              // color: Colors.white,
              width: 420.w,
              height: 840.h,
              // child: const Text('Tab 4'),
            ),
          ],
        ),
      ),
    );
  }
}
