class Item {
  final String name;
  final int price;
  final String imageUrl;
  final int stock;
  final double rating;

  const Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}

const List<Item> dummyItems = [
  Item(
    name: 'Gula',
    price: 5000,
    imageUrl: 'assets/images/gula.jpeg',
    stock: 25,
    rating: 4.5,
  ),
  Item(
    name: 'Garam',
    price: 2000,
    imageUrl: 'assets/images/garam.jpg',
    stock: 40,
    rating: 4.2,
  ),
  Item(
    name: 'Beras',
    price: 14000,
    imageUrl: 'assets/images/beras.jpeg',
    stock: 12,
    rating: 4.8,
  ),
  Item(
    name: 'Minyak Goreng',
    price: 18000,
    imageUrl: 'assets/images/minya.jpg',
    stock: 8,
    rating: 4.3,
  ),
  Item(
    name: 'Tepung',
    price: 9000,
    imageUrl: 'assets/images/tepung.jpg',
    stock: 30,
    rating: 4.0,
  ),
  Item(
    name: 'Ndogs',
    price: 28000,
    imageUrl: 'assets/images/telur.jpg',
    stock: 15,
    rating: 4.7,
  ),
];
