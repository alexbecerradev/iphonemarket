import 'package:flutter/material.dart';
import 'package:market/models/product.dart';

import '../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
        style: TextStyle(height: 1.5), ),
    );
  }
}