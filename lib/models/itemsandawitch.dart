class Itemsandawitchmodel {
  String image;
  String title;
  String description;
  String salary;
  Itemsandawitchmodel({
     required this.image,
    required this.title,
    required this.description,
    required this.salary,
  });

  get imagePath => null;
}

List itemsandawitch = [
  Itemsandawitchmodel(
      image: 'assets/images/sand1.png',
      title: 'chicken sandawitch',
      description: '100g chicken+tomato+cheese',
      salary: '\$25'),
  Itemsandawitchmodel(
      image: 'assets/images/sand2.png',
      title: 'cheese sandawitch',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
];