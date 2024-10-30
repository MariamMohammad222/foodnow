// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:foodnow/models/itemburgermodel.dart';
import 'package:foodnow/pages/cartpage.dart';
import 'package:foodnow/pages/item_page.dart';
import 'package:foodnow/views/fonts/fonts.dart';


class itemcardburger extends StatefulWidget {
  Itemburgermodel itemburgermodel;
  
  itemcardburger({
    Key? key,
    required this.itemburgermodel,
    
  }) : super(key: key);

  @override
  State<itemcardburger> createState() => _itemcardburgerState();
}
List itemburger = [
  Itemburgermodel(
      image: 'assets/images/burger1.png',
      title: 'chicken Burger',
      description: '100g chicken+tomato+cheese+onion',
      salary: '\$20'),
  Itemburgermodel(
      image: 'assets/images/burger2.png',
      title: 'cheese Burger',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
      Itemburgermodel(
      image: 'assets/images/burger1.png',
      title: 'chicken Burger',
      description: '100g chicken+tomato+cheese+onion',
      salary: '\$20'),
  Itemburgermodel(
      image: 'assets/images/burger2.png',
      title: 'cheese Burger',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
      Itemburgermodel(
      image: 'assets/images/burger1.png',
      title: 'chicken Burger',
      description: '100g chicken+tomato+cheese+onion',
      salary: '\$20'),
  Itemburgermodel(
      image: 'assets/images/burger2.png',
      title: 'cheese Burger',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
      Itemburgermodel(
      image: 'assets/images/burger1.png',
      title: 'chicken Burger',
      description: '100g chicken+tomato+cheese+onion',
      salary: '\$20'),
  Itemburgermodel(
      image: 'assets/images/burger2.png',
      title: 'cheese Burger',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),

];

class _itemcardburgerState extends State<itemcardburger> {
  get iitem => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            
            builder: (context) => ItemPage(itemburgermodel:widget.itemburgermodel, item:Itemburgermodel(image:widget.itemburgermodel.image , title: widget.itemburgermodel.title, description:widget.itemburgermodel.description, salary: widget.itemburgermodel.salary ),),)
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        width: 220,
        height: 260,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.asset(widget.itemburgermodel.image,width: 90,height: 80,),
            Text(
              widget.itemburgermodel.title,
              style:
                  TextStyle(fontWeight: GoogleFontsWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.itemburgermodel.description,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height:20,
            ),
            Row(
              children: [
                Text(
                  widget.itemburgermodel.salary,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255,214, 19, 85),
                      fontWeight: GoogleFontsWeight.bold),
                ),
                SizedBox(
                  width: 110,
                ),
                
                     CircleAvatar(
                        backgroundColor: Color.fromARGB(255,214, 19, 85),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}