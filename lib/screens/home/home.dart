import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/models/museum.dart';
import 'package:virtual_tour_museum/screens/home/museum_card.dart';
import 'package:virtual_tour_museum/screens/home/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;

  List images = [
    'museum_10_november.jpg',
    'museum_majapahit_trowulan.jpg',
    'museum_pendidikan_surabaya.jpg'
  ];

  List<Museum> museums = [
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
      nama: 'Museum Majapahait',
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
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                const HomeHeader(),
                TabBarSection(tabController: _tabController),
                HomeDiscoverSection(
                  size: size,
                  tabController: _tabController,
                  museums: museums,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeDiscoverSection extends StatelessWidget {
  const HomeDiscoverSection({
    Key? key,
    required this.size,
    required TabController tabController,
    required this.museums,
  })  : _tabController = tabController,
        super(key: key);

  final Size size;
  final TabController _tabController;
  final List<Museum> museums;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 375,
      child: TabBarView(
        controller: _tabController,
        children: [
          // popular section
          ListView.builder(
            itemCount: museums.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return MuseumCard(
                name: museums[index].nama,
                image: museums[index].gambarUtama,
                address: museums[index].alamatKota,
              );
            },
          ),

          // recent section
          const Text('Recent'),

          // rating section
          const Text('Rating'),
        ],
      ),
    );
  }
}

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
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
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
            )
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
