import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Details/details_screen.dart';
import 'package:market/constants.dart';
import 'package:market/models/product.dart';
import 'categories.dart';
import 'itemcard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text ("Apple", style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                    ),
                itemBuilder: (context, index) =>
                    ItemCard(product: products[index], press: () =>
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              DetailsScreen(product: products[index],),)),)
                ),
              )
          ),
      ],
    );
  }
}