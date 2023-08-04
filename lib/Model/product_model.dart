class Product{
  final String name;
  final double price;
  final String image;

  const Product({
    required this.name,
    required this.price,
    required this.image,
});
  static const List<Product>products =[
    Product(name: 'Freddo White Treasure', price: 100, image: 'images/bag5.png',),
    Product(name: 'Mini Bars', price: 40, image: 'images/bag8.png'),
    Product(name: 'Choco Latte ', price: 30, image: 'images/bl11.png'),
    Product(name: 'DairyMilk Daim', price: 30, image: 'images/bl10.png'),
    Product(name: 'Medley', price: 30, image: 'images/bl9.png'),
    Product(name: 'Big Taste triple choc Sensation', price: 20, image: 'images/bl8.png'),
    Product(name: 'Big taste Peanut Caramel Crisp', price: 20, image: 'images/bl7.png'),
    Product(name: 'Big Taste Oreo Crunch', price: 20, image: 'images/bl6.png'),
    Product(name: 'Marvellous Jelly Poping Candy', price: 20, image: 'images/bl4.png'),
    Product(name: 'DairyMilk Marvellous Creation', price: 10, image: 'images/sb9.png'),
    Product(name: 'Fruit and Nut', price: 10, image: 'images/sb8.png'),
    Product(name: 'Fredo Caramel', price: 10, image: 'images/sb7.png'),
    Product(name: 'Fredo', price: 10, image: 'images/sb6.png'),
    Product(name: 'DairyMilk Caramel', price: 10, image: 'images/sb5.png'),
    Product(name: 'Big Test', price: 10, image: 'images/sb2.png'),
  ];
}