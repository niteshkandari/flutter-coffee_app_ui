class TileData {
  final String image, title, description;
  final int price, id;
  TileData({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

// ignore: non_constant_identifier_names
List<TileData> tile_data = [
  TileData(
      id: 0,
      title: "Latte",
      price: 94,
      description: "with almond milk",
      image: "lib/images/latte.jpg"),
  TileData(
      id: 1,
      title: "Flate white",
      price: 34,
      description: "with less foam",
      image: "lib/images/flatwhite.jpg"),
  TileData(
    id: 2,
    title: "Americano",
    price: 24,
    description: "espresso with hot water",
    image: "lib/images/americano.jpg",
  ),
  TileData(
      id: 3,
      title: "Latte",
      price: 94,
      description: "with almond milk",
      image: "lib/images/latte.jpg"),
  TileData(
      id: 4,
      title: "Flate white",
      price: 34,
      description: "with less foam",
      image: "lib/images/flatwhite.jpg"),
  TileData(
    id: 5,
    title: "Americano",
    price: 24,
    description: "espresso with hot water",
    image: "lib/images/americano.jpg",
  )
];
/*  */