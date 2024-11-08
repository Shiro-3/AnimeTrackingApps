import 'package:flutter/material.dart';
import '../widgets/anime_card_widget.dart';

class FeaturedAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          animeCard("", "", "", "assets/images/my_hero_academia.png", width: 300, height: 190),
          animeCard("", "", "", "assets/images/fairy_tail.jpg", width: 300, height: 190),
        ],
      ),
    );
  }
}
