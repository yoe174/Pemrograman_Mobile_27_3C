import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Hero(
                              tag: 'itemImage${item.name}',
                              child: Image.network(
                                item.imageUrl ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name ?? 'Unknown Item',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text('Price    : \t${item.price}'),
                                Text('Stock   : \t${item.stock}'),
                                Text('Rating  : \t${item.rating} ⭐'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Yonatan Efrassetyo - 2241720063',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        imageUrl: 'image/sugar.png',
        stock: 10,
        rating: 4.5),
    Item(
        name: 'Salt',
        price: 2000,
        imageUrl: 'image/salt.png',
        stock: 20,
        rating: 4.0),
    Item(
        name: 'Royco',
        price: 500,
        imageUrl: 'image/royco.png',
        stock: 30,
        rating: 4.9),
    Item(
        name: 'Nescafe',
        price: 3000,
        imageUrl: 'image/nescafe.png',
        stock: 15,
        rating: 4.3),
  ];
}
