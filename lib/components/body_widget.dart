import 'package:flutter/material.dart';
import 'package:coffee_ui_app/components/coffee_type.dart';
import 'package:coffee_ui_app/components/coffee_tiles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_ui_app/model/tile_data.dart';

Column buildBody() {
  return Column(children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text("Find the best coffee for you",
          style: GoogleFonts.bebasNeue(fontSize: 56)),
    ),
    const SizedBox(height: 25),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: buildInputWidget(),
    ),
    const SizedBox(height: 20),
    const CoffeeTypeTile(),
    const SizedBox(height: 10),
    Container(
      margin: const EdgeInsets.only(top: 6),
      child: SizedBox(
        height: 280,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tile_data.length,
            itemBuilder: (context, index) {
              return CoffeeTiles(tileData: tile_data[index]);
            }),
      ),
    ),
  ]);
}

TextField buildInputWidget() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Find your coffee...',
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600))),
  );
}
