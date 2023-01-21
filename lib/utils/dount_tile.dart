import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  DonutTile(
      {Key? key,
      required this.donutFlavor,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName})
      : super(key: key);
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      '\$' + donutPrice,
                      style: TextStyle(
                          color: donutColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
              child: Image(image: AssetImage(imageName)),
            ),
            Text(
              donutFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            const Text(
              'Dunkins',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )),
                  Text(
                    'Add',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
