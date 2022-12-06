import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/models/museum.dart';

class ExploreCardImage extends StatelessWidget {
  const ExploreCardImage({
    Key? key,
    required this.museum,
    required this.size,
  }) : super(key: key);

  final Museum museum;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Image.asset(
          'assets/images/' + museum.getGambarUtama(),
          width: size.width,
          height: size.height * 0.2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
