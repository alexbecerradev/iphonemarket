import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/Details/components/body.dart';
import 'package:market/constants.dart';

import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(backgroundColor: product.color,
    elevation: 0,
      leading: IconButton (icon: SvgPicture.asset("assets/icons/back.svg",
        color: Colors.white,),
        onPressed: () =>
        Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/icons/search.svg", color: Colors.white,)
        ),
        IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/icons/shop.svg", color: Colors.white,)
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}