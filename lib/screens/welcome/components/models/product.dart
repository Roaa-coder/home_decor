class Product {
  final String image, title;
  final int price;
  Product({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> products = [
  Product(image: "assets/images/image-02.png", title: "Chairs", price: 190),
  Product(
      image: "assets/images/image-01.jpg", title: "Night Stands", price: 140),
  Product(image: "assets/images/image-3.jpg", title: "Sofas", price: 420),
  Product(image: "assets/images/image-04.jpg", title: "Desks", price: 320),
];
