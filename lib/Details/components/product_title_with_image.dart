import 'package:flutter/material.dart';
import 'package:market/constants.dart';

import '../../models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Apple",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),

          Row(
            children: <Widget>[
              RichText (text: TextSpan(
                children: [
                  TextSpan (text: "Price\n"),
                  TextSpan (text: " \$${product.price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              ),
              SizedBox(width: kDefaultPaddin / 1),
              Expanded(
                  child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(
                        product.image,
                        width: 260,
                        height: 260,
                ),
               ),
              ),
            ],
          )
        ],
      ),
    );
  }
}