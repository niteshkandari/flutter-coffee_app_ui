import 'package:flutter/material.dart';
import 'package:coffee_ui_app/model/tile_data.dart';

class CoffeeTiles extends StatelessWidget {
  final TileData tileData;
  const CoffeeTiles({
    Key? key,
    required this.tileData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.black54),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(tileData.image,
                  height: 160, width: 200, fit: BoxFit.cover),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tileData.title,
                          style: const TextStyle(fontSize: 20)),
                      const SizedBox(height: 4),
                      Text(tileData.description,
                          style: TextStyle(color: Colors.grey[700]))
                    ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ ${tileData.price}"),
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Icon(Icons.add)),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
