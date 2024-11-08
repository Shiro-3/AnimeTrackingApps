import 'package:flutter/material.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/countdown_widget.dart';
import '../widgets/trends_widget.dart';
import '../widgets/bottom_navbar_widget.dart';
import '../widgets/featured_anime_widget.dart' as featured;
import '../widgets/watchlist_anime_widget.dart' as watchlist;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              // Bagian Anime Utama
              featured.FeaturedAnime(), // Menggunakan prefix 'featured'
              SizedBox(height: 20),
              // Daftar Tonton
              Text(
                "Watch list",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              watchlist.WatchListAnime(), // Menggunakan prefix 'watchlist'
              SizedBox(height: 20),
              // Countdown Timer Widget
              CountdownWidget(endTime: DateTime.now().add(Duration(days: 7, hours: 23, minutes: 48))),
              SizedBox(height: 20),
              // Bagian Tren
              TrendsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}