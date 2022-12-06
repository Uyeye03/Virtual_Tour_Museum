import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/models/museum.dart';

class FavoriteCard extends StatelessWidget {
  final int index;
  final int length;
  final Museum museum;

  const FavoriteCard({
    Key? key,
    required this.index,
    required this.length,
    required this.museum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            height: 275,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(5, 5),
                  blurRadius: 5,
                  color: kShadowColor,
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/images/' + museum.getGambarUtama()),
                fit: BoxFit.cover,
              ),
            ),
            child: CardBody(
              name: museum.getNama(),
              city: museum.getAlamatKota(),
              rating: museum.getRating(),
            ),
          ),
        ),
      ],
    );
  }
}

class CardBody extends StatelessWidget {
  const CardBody({
    Key? key,
    required this.name,
    required this.city,
    required this.rating,
  }) : super(key: key);

  final String name;
  final String city;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            const Color(0xFF0D1B2A).withOpacity(0.8),
            const Color(0xFF1B263B).withOpacity(0.6),
            const Color(0xFF415A77).withOpacity(0.4),
            const Color(0xFF778DA9).withOpacity(0.2),
            const Color(0xFFE0E1DD).withOpacity(0.1),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF808080).withOpacity(0.25),
            offset: const Offset(
              3.0,
              3.0,
            ),
            blurRadius: 2.5,
            spreadRadius: 0.5,
          ), //BoxShadow
        ],
      ),
      child: CardDetail(name: name, city: city, rating: rating),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    Key? key,
    required this.name,
    required this.city,
    required this.rating,
  }) : super(key: key);

  final String name;
  final String city;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // nama museum
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFFE0E1DD),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Cera Round Pro",
                  ),
                ),

                // kota museum
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xFF778DA9),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        city,
                        style: const TextStyle(
                          color: Color(0xFFE0E1DD),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Cera Round Pro",
                        ),
                      )
                    ],
                  ),
                ),

                // rating museum
                FittedBox(
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5FCFF).withOpacity(0.5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            color: Color(0xFF555B6E),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cera Round Pro 2",
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // favorite button
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF808080).withOpacity(0.25),
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 2.5,
                      spreadRadius: 0.5,
                    ), //BoxShadow
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.favorite),
                  color: const Color(0xFFDA3E52),
                  iconSize: 30,
                  onPressed: () {/* Your code */},
                ),
              ),

              // chevron icon
              Container(
                alignment: Alignment.bottomCenter,
                child: const Icon(
                  Icons.chevron_right_sharp,
                  color: Color(0xFFE0E1DD),
                  size: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
