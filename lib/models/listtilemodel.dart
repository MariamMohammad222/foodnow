import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listtilemodel {
  IconData icon;
  String title;
  Listtilemodel({required this.icon, required this.title});
}

List Listitleitem = [
  Listtilemodel(icon:Icons.home ,title:'Home'),
  Listtilemodel(icon:Icons.account_circle ,title:'Profile'),
  Listtilemodel(icon:Icons.shopping_cart_sharp ,title:'Cart'),

];