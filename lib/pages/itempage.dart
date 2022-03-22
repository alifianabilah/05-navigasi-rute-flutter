import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key, required this.name, required this.price, required this.stock})
      : super(key: key);

  static const routeName = '/item';

  final String name;
  final int price;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
              child: Column(
            children: [
              Text('Shoping List'),
              SizedBox(height: 5),
              Text('Alifia Shofa Nabilah (2031710027)'),
            ],
          )),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 250),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  '\nNama Produk : ' +
                      name +
                      '\n Stok : ' +
                      stock.toString() +
                      '\n Harga : ' +
                      '$price',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
