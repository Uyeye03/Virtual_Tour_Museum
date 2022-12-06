import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/models/user.dart';
import 'package:virtual_tour_museum/screens/detail/detail_museum.dart';
import 'package:virtual_tour_museum/screens/favorites/favorite_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          child: ListView.builder(
            itemCount: user_1.getFavoritMuseum().length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMuseum(
                        museum: user_1.getFavoritMuseum()[index],
                      ),
                    ),
                  );
                },
                child: FavoriteCard(
                  index: index,
                  length: user_1.getFavoritMuseum().length,
                  museum: user_1.getFavoritMuseum()[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
