import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/models/museum.dart';
import 'package:virtual_tour_museum/screens/home/museum_card.dart';
import 'package:virtual_tour_museum/screens/home/header.dart';
import 'package:virtual_tour_museum/screens/home/tabbar_view.dart';

import 'tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;

  List<Museum> popular = [
    Museum(
      id: 0,
      nama: 'Museum 10 November',
      gambarUtama: 'museum_10_november.jpg',
      alamatLengkap:
          'Pahlawan St, Alun-alun Contong, Bubutan, Surabaya City, East Java',
      alamatKota: 'Surabaya',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
    Museum(
      id: 0,
      nama: 'Museum Majapahit',
      gambarUtama: 'museum_majapahit_trowulan.jpg',
      alamatLengkap:
          'Pendopo Agung St, Ngelinguk, Trowulan, Mojokerto, East Java',
      alamatKota: 'Mojokerto',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
    Museum(
      id: 0,
      nama: 'Museum Pendidikan Surabaya',
      gambarUtama: 'museum_pendidikan_surabaya.jpg',
      alamatLengkap:
          'Genteng Kali St. No.10, Genteng, Surabaya City, East Java',
      alamatKota: 'Surabaya',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
  ];

  List<Museum> recent = [
    Museum(
      id: 0,
      nama: 'Museum Pendidikan Surabaya',
      gambarUtama: 'museum_pendidikan_surabaya.jpg',
      alamatLengkap:
          'Genteng Kali St. No.10, Genteng, Surabaya City, East Java',
      alamatKota: 'Surabaya',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
    Museum(
      id: 0,
      nama: 'Museum Majapahit',
      gambarUtama: 'museum_majapahit_trowulan.jpg',
      alamatLengkap:
          'Pendopo Agung St, Ngelinguk, Trowulan, Mojokerto, East Java',
      alamatKota: 'Mojokerto',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
    Museum(
      id: 0,
      nama: 'Museum 10 November',
      gambarUtama: 'museum_10_november.jpg',
      alamatLengkap:
          'Pahlawan St, Alun-alun Contong, Bubutan, Surabaya City, East Java',
      alamatKota: 'Surabaya',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
  ];

  List<Museum> rating = [
    Museum(
      id: 0,
      nama: 'Museum Majapahit',
      gambarUtama: 'museum_majapahit_trowulan.jpg',
      alamatLengkap:
          'Pendopo Agung St, Ngelinguk, Trowulan, Mojokerto, East Java',
      alamatKota: 'Mojokerto',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
    Museum(
      id: 0,
      nama: 'Museum 10 November',
      gambarUtama: 'museum_10_november.jpg',
      alamatLengkap:
          'Pahlawan St, Alun-alun Contong, Bubutan, Surabaya City, East Java',
      alamatKota: 'Surabaya',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
    Museum(
      id: 0,
      nama: 'Museum Pendidikan Surabaya',
      gambarUtama: 'museum_pendidikan_surabaya.jpg',
      alamatLengkap:
          'Genteng Kali St. No.10, Genteng, Surabaya City, East Java',
      alamatKota: 'Surabaya',
      deskripsi: 'None',
      linkGoogleMap: 'https://genta.petra.ac.id/',
      linkVirtualTour: 'https://genta.petra.ac.id/',
      listKomentar: [],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  } // index of page

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const HomeHeader(),
              TabBarSection(tabController: _tabController),
              HomeDiscoverSection(
                size: size,
                tabController: _tabController,
                popular: popular,
                recent: recent,
                rating: rating,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
