import 'package:flutter/material.dart';
import 'dart:async';

class CountdownWidget extends StatefulWidget {
  final DateTime endTime;

  CountdownWidget({required this.endTime});

  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Timer _timer;
  late Duration _timeRemaining;

  @override
  void initState() {
    super.initState();
    _timeRemaining = widget.endTime.difference(DateTime.now());
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timeRemaining = widget.endTime.difference(DateTime.now());
        if (_timeRemaining.isNegative) {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String days = duration.inDays.toString().padLeft(2, '0');
    String hours = (duration.inHours % 24).toString().padLeft(2, '0');
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return "$days Hari $hours Jam $minutes Menit $seconds Detik";
  }

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar untuk membuat tampilan responsif
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSizeTitle = screenWidth * 0.05; // Ukuran font untuk judul
    double fontSizeSubtitle = screenWidth * 0.04; // Ukuran font untuk teks subtitle

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.04), // padding responsif
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tick Tock",
            style: TextStyle(
              fontSize: fontSizeTitle,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: screenWidth * 0.01),
          Text(
            "One Piece Film: Red",
            style: TextStyle(
              fontSize: fontSizeSubtitle,
              color: Colors.purple[900],
            ),
          ),
          SizedBox(height: screenWidth * 0.02),
          Text(
            _formatDuration(_timeRemaining),
            style: TextStyle(
              fontSize: fontSizeSubtitle,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
