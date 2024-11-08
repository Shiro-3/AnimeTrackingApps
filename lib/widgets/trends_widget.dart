import 'package:flutter/material.dart';

class TrendsWidget extends StatelessWidget {
  final List<String> trendImages = [
    "assets/images/trend1.jpg",
    "assets/images/trend2.jpg",
    "assets/images/trend3.jpg",
    "assets/images/trend4.jpg",
    "assets/images/trend5.jpg",
    "assets/images/trend6.jpg",
    "assets/images/trend7.jpg",
    "assets/images/trend8.jpg",
    // Tambahkan gambar lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trends in Japan",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          height: 150, // Sesuaikan tinggi container sesuai kebutuhan
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trendImages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    trendImages[index],
                    width: 110, // Sesuaikan lebar gambar sesuai kebutuhan
                    height: 150, // Sesuaikan tinggi gambar sesuai kebutuhan
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
