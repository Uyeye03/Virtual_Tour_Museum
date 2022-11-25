import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/models/museum.dart';
import 'package:virtual_tour_museum/screens/home/museum_card.dart';

class HomeDiscoverSection extends StatelessWidget {
  const HomeDiscoverSection({
    Key? key,
    required this.size,
    required TabController tabController,
    required this.popular,
    required this.recent,
    required this.rating,
  })  : _tabController = tabController,
        super(key: key);

  final Size size;
  final TabController _tabController;

  final List<Museum> popular;
  final List<Museum> recent;
  final List<Museum> rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: (size.height * 0.575 + kDefaultPadding) * popular.length,
      margin: const EdgeInsets.only(bottom: 25),
      child: TabBarView(
        controller: _tabController,
        children: [
          // popular section
          _customListView(popular),

          // recent section
          _customListView(recent),

          // rating section
          _customListView(rating),
        ],
      ),
    );
  }

  ListView _customListView(List<Museum> data) {
    return ListView.builder(
      itemCount: data.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return MuseumCard(
          index: index,
          name: data[index].nama,
          image: data[index].gambarUtama,
          address: data[index].alamatKota,
          length: data.length,
        );
      },
    );
  }
}
