import 'package:flutter/material.dart';

class CoffeeTypeTile extends StatefulWidget {
  const CoffeeTypeTile({super.key});

  @override
  State<CoffeeTypeTile> createState() => _CoffeeTypeTileState();
}

class _CoffeeTypeTileState extends State<CoffeeTypeTile> {
  // ignore: non_constant_identifier_names
  List<dynamic> coffee_type = [
    "cappuccino",
    "Americano",
    "Flat White",
    "Latte",
    "Espresso",
    "Affagato",
    "Turkish",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: ListView.builder(
            itemCount: coffee_type.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                buildTypeGesture(coffee_type[index], index)));
  }

  Widget buildTypeGesture(coffeeType, id) {
    return GestureDetector(
      onTap: () {
        setState(() => selectedIndex = id);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(coffeeType,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == id ? Colors.orange : Colors.grey)),
            const SizedBox(height: 8),
            Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    color: selectedIndex == id
                        ? Colors.orange
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20)))
          ],
        ),
      ),
    );
  }
}
