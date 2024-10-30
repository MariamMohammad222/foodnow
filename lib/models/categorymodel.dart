// ignore_for_file: public_member_api_docs, sort_constructors_first
class Categorymodel {
  String icon;
  String categoryname;
  Categorymodel({
    required this.icon,
    required this.categoryname,
  });
}

List categorylist = [
  Categorymodel(icon: 'assets/icons/burger_icon.png', categoryname: 'Burger'),
  Categorymodel(icon: 'assets/icons/pizzaicon.png', categoryname: 'Pizaa'),
  Categorymodel(
      icon: 'assets/icons/sandawich_icon.png', categoryname: 'Sandwich'),
];