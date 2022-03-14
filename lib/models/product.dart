import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id, stock;
  final Color color;
  Product ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.stock,
    required this.color,
});
}

List<Product> products = [
  Product(
    id: 1,
    title: "iPhone 5",
    price: 350,
    description: "16 GB",
    image: "assets/images/iph5.png",
    stock: 5,
    color: Color(0xFF3D82AE)),
  Product(
    id: 2,
    title: "iPhone 8",
    price: 100,
    description: "64 GB",
    image: "assets/images/iph8-min.png",
    stock: 10,
    color: Color(0xFF11172F)),
  Product(
    id: 3,
    title: "iPhone Xs",
    price: 850,
    description: "256 GB",
    image: "assets/images/iphxs.png",
    stock: 5,
    color: Color(0xFF11172F)),
  Product (
    id: 4,
    title: "iPhone 11",
    price: 1500,
    description: "128 GB",
    image: "assets/images/iph11.png",
    stock: 5,
    color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "iPhone 7 Plus",
      price: 550,
      description: "256 GB",
      image: "assets/images/iph7plus.png",
      stock: 5,
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "iPhone Xr",
      price: 850,
      description: "256 GB",
      image: "assets/images/iphxr.png",
      stock: 5,
      color: Color(0xFF11172F)),
];