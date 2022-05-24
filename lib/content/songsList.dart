import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

var songs = [
  'Shapes You',
  'Terperosok Jurang',
  'Dikhianati Ragil',
  'Alone',
  'Genk Kapak',
  'Yaitu Dah',
  'Lagu Enak',
  'Tiktok Beat Musik',
];

var artist = [
  'Alan Walker',
  'Budi Doremi',
  'Anggit',
  'Baba kalee',
  'Lil Salmonela',
  'Tidak Tulus',
  'Anjay',
  'NCS',
];

class SongsContent extends StatelessWidget {
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
                    '${index + 1}.' + ' ' + '${songs[random.nextInt(songs.length)]}' + ' - ' + '${artist[random.nextInt(artist.length)]}',
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis totam, id iure perferendis earum voluptate.',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
