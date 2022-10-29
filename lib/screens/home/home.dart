import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/screens/home/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              HomeHeader(),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding),
                child: Column(
                  children: [
                    // Tab bar
                    Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 2, color: kPrimaryColor),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                'Popular',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              'Recent',
                              style: TextStyle(
                                  color: Color(0xFF778DA9),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              'Rating',
                              style: TextStyle(
                                  color: Color(0xFF778DA9),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),

                    // card section
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        height: size.height * 0.5,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30,
                              color: kShadowColor,
                            )
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/museum_10_november.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xFF0D1B2A).withOpacity(0.8),
                                Color(0xFF1B263B).withOpacity(0.6),
                                Color(0xFF415A77).withOpacity(0.4),
                                Color(0xFF778DA9).withOpacity(0.2),
                                Color(0xFFE0E1DD).withOpacity(0.1),
                              ],
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Museum 10 November',
                                            style: TextStyle(
                                              color: Color(0xFFE0E1DD),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color(0xFF778DA9),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Expanded(
                                                  child: Text(
                                                    'Surabaya',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFE0E1DD),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Icon(
                                    Icons.chevron_right_sharp,
                                    color: Color(0xFFE0E1DD),
                                    size: 50,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
