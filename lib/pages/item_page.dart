import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:foodnow/models/itemburgermodel.dart';
import 'package:foodnow/pages/cart.dart';
import 'package:foodnow/pages/cartpage.dart';
import 'package:foodnow/pages/cartprovider.dart';
import 'package:foodnow/pages/home_page_mohamed.dart';
import 'package:foodnow/views/fonts/fonts.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatefulWidget {
final Itemburgermodel itemburgermodel;
final Itemburgermodel item;
  ItemPage({required this.itemburgermodel, required this.item});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Arc(
                
                height:20,
                child: Image.asset(
                  widget.itemburgermodel.image,
                  fit: BoxFit.cover,
                  height: 200,
                 
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.itemburgermodel.title,
                          style: TextStyle(
                              fontSize: 25, fontWeight: GoogleFontsWeight.black),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/Icon Star.png'),
                        SizedBox(
                          width: 6,
                        ),
                        Text('4,8 Rating', style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset('assets/icons/shoppingbag.png'),
                        SizedBox(
                          width: 6,
                        ),
                        Text('7000+ Order', style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                        'In a medium bowl, add ground chicken, breadcrumbs, mayonnaise, onions, parsley, garlic, paprika, salt and pepper. Use your hands to combine all the ingredients together until blended, but don\'t over mix.'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(255,214, 19, 85),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Provider.of<CartProvider>(context, listen: false).addItem(widget.item);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => OrderDetailsPage()),);
                                        
                                          cont=0;
                                          
                                        
                                        
                            },
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}