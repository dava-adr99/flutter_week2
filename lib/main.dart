import 'package:flutter/material.dart';

var images = [
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/4/11/23508b13-dcd9-4854-a50a-87e25fdd5e22.png'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/4/14/7b09176e-db37-483b-9eb2-224cd9318436.png'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/3/29/d32be0e3-26df-4a94-ac34-7aadffb1f155.jpg'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/3/29/a9f028c0-75cd-4b5c-afb4-7c73a8d3b142.jpg'),
  NetworkImage('https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/30/6860aae8-b1a7-480e-b4b5-5242b76c0f81.jpg'),
  NetworkImage('https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/31/34b3e452-95d0-4196-9ad6-f505d426b1a0.jpg'),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Toko Online'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            height: 300,
            color: Colors.red,
            child: Card(
              color: Colors.white,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: images[index],
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'Xiaomi 12 Pro',
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
