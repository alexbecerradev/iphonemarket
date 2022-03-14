import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/Details/components/add_to_cart.dart';
import 'package:market/Details/components/product_title_with_image.dart';
import 'package:market/constants.dart';


import '../../models/product.dart';
import '../../screens/components/cart_counter.dart';
import 'Counter_fav_btn.dart';
import 'Description.dart';
import 'color_size.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body ({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container (
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    height: 500,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        Description(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        CounterWithFavBtn(),
                        SizedBox(height: kDefaultPaddin / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              )
          )
        ],
      ),
    );
  }
}







