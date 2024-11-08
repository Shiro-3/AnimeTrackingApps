import 'package:flutter/material.dart';

Widget animeCard(String title, String subtitle, String tag, String imageUrl, {double width = 150, double height = 150}) {
  return Container(
    width: width,
    margin: EdgeInsets.only(right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            if (tag.isNotEmpty)
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  color: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    tag,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 5), // Menambah jarak untuk menghindari overflow
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis, // Menghindari teks yang terlalu panjang
        ),
        if (subtitle.isNotEmpty)
          Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey),
            overflow: TextOverflow.ellipsis,
          ),
      ],
    ),
  );
}
