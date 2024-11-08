import 'package:flutter/material.dart';
import '../widgets/bottom_navbar_widget.dart';

class AchievementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Achievements'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            achievementCard('Blaze', 'Reach a 90 day streak', 'assets/images/blaze.png', 47, 90),
            achievementCard('Otaku', 'Watch 2000 Episodes', 'assets/images/otaku.png', 1400, 2000),
            achievementCard('Night Owl', 'Spend 80h at midnight', 'assets/images/night_owl.png', 26, 80),
            achievementCard('Geek', 'Read 2000 pages', 'assets/images/geek.png', 1800, 2000),
            achievementCard('Junior', 'Start your first show', 'assets/images/junior.png', 1, 1),
            achievementCard('Chaser', 'Watch 200 Anime', 'assets/images/chaser.png', 200, 200),
            achievementCard('Winner', 'Earned #1 in League', 'assets/images/winner.png', 1, 1),
            achievementCard('A whole week', 'Watch for 7 days', 'assets/images/whole_week.png', 7, 7),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }

  Widget achievementCard(String title, String description, String imageUrl, int current, int goal) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(255, 152, 0, 1).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 50,
            height: 50,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 12, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: current / goal,
            backgroundColor: Colors.grey[300],
            color: Colors.blue,
          ),
          SizedBox(height: 4),
          Text(
            '$current/$goal',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
