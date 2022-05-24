import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

var listFav = [
  'Lagu Favorit',
  'Lagu Galau',
  'Lagu Santai',
  'Lagu Tiktok',
  'Lagu Tidak Nggenah',
  'Lagu Wibu',
];

class PlayListContent extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 80,
              child: Card(
                child: ListTile(
                  title: Text(
                    '${listFav[random.nextInt(listFav.length)]}',
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
