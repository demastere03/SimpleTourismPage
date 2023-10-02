import 'package:flutter/material.dart';
import 'package:prak3/tourism_place.dart';
class HalamanDetail extends StatelessWidget {
  const HalamanDetail ({super.key, required this.place});
  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Tourism'),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 4,
            child: Image.network(place.imageUrls[0]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            place.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            place.description,
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 0.5,
            ),
          ),
        ], //Children
      ),
    );
  }
}
