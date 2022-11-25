import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          // isScrollable: true,  // ini dipake kalau nanti mau nambah tabbar baru biar scrollable
          controller: _tabController,
          labelColor: kPrimaryColor,
          unselectedLabelColor: kSecondaryColor,
          labelStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          indicatorColor: kPrimaryColor,
          tabs: const [
            Tab(
              text: 'Popular',
            ),
            Tab(
              text: 'Recent',
            ),
            Tab(
              text: 'Rating',
            ),
          ],
        ),
      ),
    );
  }
}
