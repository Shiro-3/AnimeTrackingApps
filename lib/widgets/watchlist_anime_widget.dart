import 'package:flutter/material.dart';
import '../widgets/anime_card_widget.dart';
import '../screens/about_anime.dart';

class WatchListAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "My Hero Academia",
                    imageUrl: "assets/images/my_hero_academia.jpg",
                    genre: "Adventure • Action • Fantasy",
                    episodes: 1049,
                    duration: 20,
                    rating: 8.8,
                    likes: 10400,
                    comments: 3800,
                    shares: 1500,
                  ),
                ),
              );
            },
            child: animeCard(
              "My Hero Academia",
              "",
              "",
              "assets/images/my_hero_academia.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Tokyo Ghoul",
                    imageUrl: "assets/images/tokyo_ghoul.jpg",
                    genre: "Horror • Thriller",
                    episodes: 48,
                    duration: 24,
                    rating: 7.9,
                    likes: 600,
                    comments: 100,
                    shares: 90,
                  ),
                ),
              );
            },
            child: animeCard(
              "Tokyo Ghoul",
              "",
              "",
              "assets/images/tokyo_ghoul.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Attack on Titan",
                    imageUrl: "assets/images/attack_on_titan.jpg",
                    genre: "Action • Drama • Fantasy",
                    episodes: 87,
                    duration: 23,
                    rating: 9.0,
                    likes: 1200,
                    comments: 4500,
                    shares: 2200,
                  ),
                ),
              );
            },
            child: animeCard(
              "Attack on Titan",
              "",
              "",
              "assets/images/attack_on_titan.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Alya Sometimes Hides Her Feelings in Russian",
                    imageUrl: "assets/images/trend3.jpg",
                    genre: "Romance • Comedy",
                    episodes: 12,
                    duration: 24,
                    rating: 7.5,
                    likes: 5300,
                    comments: 1800,
                    shares: 600,
                  ),
                ),
              );
            },
            child: animeCard(
              "Alya Sometimes Hides Her Feelings in Russian",
              "",
              "",
              "assets/images/trend3.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Oshi no Ko S2",
                    imageUrl: "assets/images/trend4.jpg",
                    genre: "Drama • Mystery",
                    episodes: 11,
                    duration: 25,
                    rating: 8.4,
                    likes: 6500,
                    comments: 2200,
                    shares: 800,
                  ),
                ),
              );
            },
            child: animeCard(
              "Oshi no Ko S2",
              "",
              "",
              "assets/images/trend4.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Mashle",
                    imageUrl: "assets/images/trend5.jpg",
                    genre: "Action • Comedy • Fantasy",
                    episodes: 12,
                    duration: 24,
                    rating: 7.3,
                    likes: 4200,
                    comments: 1600,
                    shares: 500,
                  ),
                ),
              );
            },
            child: animeCard(
              "Mashle",
              "",
              "",
              "assets/images/trend5.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Violet Evergarden",
                    imageUrl: "assets/images/violet_evergarden.jpg",
                    genre: "Drama • Adventure • Fantasy",
                    episodes: 12,
                    duration: 24,
                    rating: 7.3,
                    likes: 4200,
                    comments: 1600,
                    shares: 500,
                  ),
                ),
              );
            },
            child: animeCard(
              "Violet Evergarden",
              "",
              "",
              "assets/images/violet_evergarden.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Gimai Seikatsu",
                    imageUrl: "assets/images/Gimai_seikatsu.png",
                    genre: "Drama • Comedy • Romance",
                    episodes: 12,
                    duration: 24,
                    rating: 7.3,
                    likes: 4200,
                    comments: 1600,
                    shares: 500,
                  ),
                ),
              );
            },
            child: animeCard(
              "Gimai Seikatsu",
              "",
              "",
              "assets/images/Gimai_seikatsu.png",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Isekai Shikkaku",
                    imageUrl: "assets/images/Isekai_shikkaku.jpg",
                    genre: "Action • Comedy • Fantasy",
                    episodes: 12,
                    duration: 24,
                    rating: 7.3,
                    likes: 4200,
                    comments: 1600,
                    shares: 500,
                  ),
                ),
              );
            },
            child: animeCard(
              "Isekai Shikkaku",
              "",
              "",
              "assets/images/Isekai_shikkaku.jpg",
              width: 150,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAnime(
                    title: "Sword Art Online Alternative: Gun Gale Online II",
                    imageUrl: "assets/images/SAO_GGO_II.jpg",
                    genre: "Action • Comedy • Game",
                    episodes: 12,
                    duration: 24,
                    rating: 7.3,
                    likes: 4200,
                    comments: 1600,
                    shares: 500,
                  ),
                ),
              );
            },
            child: animeCard(
              "Sword Art Online Alternative: Gun Gale Online II",
              "",
              "",
              "assets/images/SAO_GGO_II.jpg",
              width: 150,
              height: 250,
            ),
          ),
        ],
      ),
    );
  }
}
