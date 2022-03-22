import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';
import 'package:navigasi_rute/widgets/listview.dart';

// Alifia Shofa' Nabilah (2031710027)
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Sugar', stock: 25, price: 10000),
    Item(name: 'Salt', stock: 42, price: 3500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        margin: const EdgeInsets.all(8),
        child: ListViewBuilder(items: items),
      ),
    );
  }
}
