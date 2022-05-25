import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();
var albums = [
  'Almbum Bergejolak',
  'Almbum Angin Konoha',
  'Almbum Manuk',
  'Almbum Kunam',
  'Almbum Lorem',
  'Almbum Wibu',
];

class AlbumContent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(8, (index) {
          return Container(
            child: Card(
              color: Colors.deepPurpleAccent,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    '${albums[random.nextInt(albums.length)]}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
