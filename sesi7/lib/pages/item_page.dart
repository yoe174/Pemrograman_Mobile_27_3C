// import 'package:belanja/models/item.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: 'itemImage${itemArgs.name}',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      itemArgs.imageUrl ?? '',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16),
                    Text(
                      '${itemArgs.name}',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text('Price   : ${itemArgs.price}'),
                    Text('Stock   : ${itemArgs.stock}'),
                    Text('Rating  : ${itemArgs.rating} ⭐'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Yonatan Efrassetyo - 2241720063 ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
