import 'package:flutter/material.dart';

class DetailVideo extends StatefulWidget {
  final String videoUrl;

  DetailVideo({required this.videoUrl});

  @override
  State<DetailVideo> createState() => _DetailVideoState(videoUrl);
}

class _DetailVideoState extends State<DetailVideo> {
  final String videoUrl;
  _DetailVideoState(this.videoUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Resep Video')
          ],
        ),
      ),
    );
  }
}
