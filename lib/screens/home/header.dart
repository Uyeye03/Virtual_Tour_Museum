import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/widgets/button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, top: kDefaultPadding, right: kDefaultPadding),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icons/logo.png',
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discover',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kTitleTextColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: RichText(
                            text: TextSpan(
                              text: 'Get Immersed in ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: kTextLightColor),
                              children: [
                                TextSpan(
                                  text: "New Experience.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: kTextLightColor),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  RoundedButton(
                      icon: Icons.notifications,
                      onTap: () {},
                      color: kTitleTextColor),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
