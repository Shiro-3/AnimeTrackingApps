import 'package:flutter/material.dart';
import '../screens/home_screen.dart'; // Pastikan ini benar sesuai struktur project
import '../screens/achievement_screen.dart'; // Import screen Achievement

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigasi ke screen berdasarkan index
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AchievementScreen()),
      );
    }
    // Tambahkan navigasi untuk tab lain jika diperlukan
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: 'Achievement',
        ),
        BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/icon_app.png',
          width: 64,
          height: 64,
        ),
        label: '',
      ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Kalender',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color.fromRGBO(255, 152, 0, 1),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
    );
  }
}
