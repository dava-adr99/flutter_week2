import 'package:flutter/material.dart';

var images = [
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/4/11/23508b13-dcd9-4854-a50a-87e25fdd5e22.png'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/4/14/7b09176e-db37-483b-9eb2-224cd9318436.png'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/3/29/d32be0e3-26df-4a94-ac34-7aadffb1f155.jpg'),
  NetworkImage('https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/3/29/a9f028c0-75cd-4b5c-afb4-7c73a8d3b142.jpg'),
  NetworkImage('https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/30/6860aae8-b1a7-480e-b4b5-5242b76c0f81.jpg'),
  NetworkImage('https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/31/34b3e452-95d0-4196-9ad6-f505d426b1a0.jpg'),
];

var productName = [
  'Poco M4 Pro 8GB 256GB Smartphone - Cool Blue',
  'Xiaomi 12 8GB 256GB Smartphone - Gray',
  'Xiaomi 11T Pro 8GB 256GB Smartphone - Moonlight White',
  'Xiaomi Pad 5 (WIFI) 6GB 256GB Smart Tablet - Pearl White',
  'Redmi Note 10S 6GB 64GB Smartphone - Pebble White',
  'Redmi 9A CKD 2GB 32GB Smartphone - Peacock Green',
];

var productPrice = [
  '3.399.000',
  '9.999.000',
  '6.999.000',
  '5.199.000',
  '2.599.000',
  '1.279.000',
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
            margin: EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 100,
                child: Collumn(

                  children: <Widget>[
                    Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: images[index],
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Xiaomi 12 Pro',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black, fontSize: 24.0),
                      ),
                      subtitle: Text('Rp ${productPrice[index]}'),
                    ),
                  ]
                ),
            ),
          );
        }),
      ),
    );
  }
}
