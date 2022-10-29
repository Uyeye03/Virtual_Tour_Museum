import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';

class MuseumCard extends StatelessWidget {
  final String name;
  final String image;
  final String address;

  const MuseumCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            height: 375,
            width: 275,
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
                image: AssetImage('assets/images/' + image),
                fit: BoxFit.cover,
              ),
            ),
            child: CardBody(name: name, address: address),
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
    required this.address,
  }) : super(key: key);

  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: CardDetail(name: name, address: address),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    Key? key,
    required this.name,
    required this.address,
  }) : super(key: key);

  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFFE0E1DD),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF778DA9),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Expanded(
                            child: Text(
                              address,
                              style: TextStyle(
                                  color: Color(0xFFE0E1DD),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
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
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
