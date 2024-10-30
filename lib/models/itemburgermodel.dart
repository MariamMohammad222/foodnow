class Itemburgermodel {
  String image;
  String title;
  String description;
  String salary;
  Itemburgermodel({
     required this.image,
    required this.title,
    required this.description,
    required this.salary,
  });

  get imagePath => null;
}

List itemburger = [
  Itemburgermodel(
      image: 'assets/images/CheesyBacon.png',
      title: 'chicken Burger',
      description: '100g chicken+tomato+cheese',
      salary: '\$25'),
  Itemburgermodel(
      image: 'assets/images/burger2.png',
      title: 'cheese Burger',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
        Itemburgermodel(
      image: 'assets/images/CheesyBacon.png',
      title: 'chicken Burger',
      description: '100g chicken+tomato+cheese',
      salary: '\$25'),

];