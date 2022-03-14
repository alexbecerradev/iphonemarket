import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/constants.dart';
import 'package:market/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color,
                )
            ),
            child:
            IconButton (
              icon: SvgPicture.asset("assets/icons/cart_add.svg", color: product.color),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox (
              height: 50,
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)
                ),
                color: product.color,
                onPressed: () {},
                child: Text("Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
