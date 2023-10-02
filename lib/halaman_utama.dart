import 'package:flutter/material.dart';
import 'package:prak3/detail.dart';
import 'package:prak3/tourism_place.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        title: Text('Halaman Utama'),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
              onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanDetail(place: place)));
              },
            child: Card(
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: Image.network(place.imageUrls[0]),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(place.name),
                    ],
                  ),
                ], // Children
              ),
            ),
          );
        },
      ),
    );
  }
}
