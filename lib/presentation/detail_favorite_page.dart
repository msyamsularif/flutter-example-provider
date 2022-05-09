import 'package:example_provider/models/product.dart';
import 'package:example_provider/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailFavoritePage extends StatelessWidget {
  const DetailFavoritePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Favorite"),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, value, _) => (value.productFav.isNotEmpty)
            ? ListView.builder(
                itemCount: value.productFav.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    value.productFav[index].title,
                  ),
                  subtitle: Text(
                    value.productFav[index].subTitle,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      value.deleteFav(value.productFav[index]);
                    },
                  ),
                ),
              )
            : Center(
                child: Text("No data product"),
              ),
      ),
    );
  }
}
