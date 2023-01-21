import 'package:donut_app/utils/dount_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Donut extends StatelessWidget {
  Donut({Key? key}) : super(key: key);
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Chocolate", "36", Colors.brown, "images/Chocolate.png"],
    ["Strawberry", "45", Colors.red, "images/Strawberry.png"],
    ["Caramel", "84", Colors.yellow, "images/Caramel.png"],
    ["Grape", "95", Colors.purple, "images/Grape.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
