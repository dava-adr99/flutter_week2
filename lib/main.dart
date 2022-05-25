import 'package:flutter/material.dart';

var images = [
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/4/14/7b09176e-db37-483b-9eb2-224cd9318436.png'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/3/29/d32be0e3-26df-4a94-ac34-7aadffb1f155.jpg')
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
        children: List.generate(8, (index) {
          return Container(
            width: 150,
            height: 150,
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
