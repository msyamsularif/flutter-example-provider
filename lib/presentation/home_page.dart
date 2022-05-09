import 'package:example_provider/models/product.dart';
import 'package:example_provider/presentation/detail_favorite_page.dart';
import 'package:example_provider/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider App'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailFavoritePage(),
              ),
            ),
          )
        ],
      ),
      body: Consumer<ProductProvider>(
        builder: (context, value, _) => ListView.builder(
          itemCount: value.product.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(value.product[index].title),
            subtitle: Text(value.product[index].subTitle),
            trailing: IconButton(
              icon: Icon(
                value.product[index].isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color:
                    value.product[index].isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                value.isFav(value.product[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
