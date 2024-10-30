import 'dart:core';

import 'package:alhamdllelah/appUI/App.ui.dart';
import 'package:alhamdllelah/fonts/fonts.dart';
import 'package:alhamdllelah/models/categorymodel.dart';
import 'package:alhamdllelah/models/itemburgermodel.dart';
import 'package:alhamdllelah/models/listtilemodel.dart';
import 'package:alhamdllelah/pages/cart.dart';
import 'package:alhamdllelah/pages/itemcollection.dart';
import 'package:alhamdllelah/pages/popular_meal_menu.dart';
import 'package:alhamdllelah/pages/profile_page.dart';
import 'package:alhamdllelah/widgets/category.dart';
import 'package:alhamdllelah/widgets/customListTile.dart';
import 'package:alhamdllelah/widgets/itemcardburger.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget>screens=[
  HomePage(),
  OrderDetailsPage(),
  ProfilePage(),


];
int cartcounter=0;
int selectedIndex = 0;
String searchText = "";
List images = [
  'assets/images/offer_pic.PNG',
  'assets/images/offerpic2.jpeg',
];
List itemburger = [
  Itemburgermodel(
      image: 'assets/images/CheesyBacon.png',
      title: 'chicken Burger',
      description: '100g              chicken+tomato+cheese',
      salary: '\$25'),
  Itemburgermodel(
      image: 'assets/images/R.png',
      title: 'cheese Burger',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
];
List itempizza = [
  Itemburgermodel(
      image: 'assets/images/pizza (2).png',
      title: 'chicken pizza',
      description: ' chicken+tomato+onion+cheese',
      salary: '\$25'),
   Itemburgermodel(
      image: 'assets/images/R (1).png',
      title: 'amircan pizza',
      description: ' meat+tomato+onion+cheese',
      salary: '\$15'),
];
List itemsandawitch = [
  Itemburgermodel(
      image: 'assets/images/sand1.png',
      title: 'chicken sandawitch',
      description: '100g chicken+tomato+cheese',
      salary: '\$25'),
  Itemburgermodel(
      image: 'assets/images/sand2.png',
      title: 'cheese sandawitch',
      description: '100g meat+tomato+onion+cheese',
      salary: '\$15'),
];

class _HomePageState extends State<HomePage> {
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUI.colorBackground,
      appBar: AppBar(
        backgroundColor: AppUI.colorBackground,
        surfaceTintColor: AppUI.colorBackground,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                //going to profile page
              },
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/profilepic.png'),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppUI.colorgray,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomListtilefordrawer(
              listtilemodel: Listitleitem[0],
            ),
            CustomListtilefordrawer(
              listtilemodel: Listitleitem[1],
            ),
            CustomListtilefordrawer(
              listtilemodel: Listitleitem[2],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },

                  itemCount: images.length,
                  // autoplay: true,
                  pagination: SwiperPagination(),
                  //control: SwiperControl(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => itemcollectionscreen(itemburgermodel:itempizza[0],)));
                      },
                      child: categoryitem(
                        categorymodel: categorylist[0],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap:(){
                      
                      },
                      child: categoryitem(
                        categorymodel: categorylist[1],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                     onTap:() => itempizza,
                      
                      child: categoryitem(
                        categorymodel: categorylist[2],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemcardburger(
                      itemburgermodel: itemburger[0],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    itemcardburger(
                      itemburgermodel: itemburger[1],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    itemcardburger(
                      itemburgermodel: itemburger[0],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    itemcardburger(
                      itemburgermodel: itemburger[1],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Popular Meal Menu',
                        style: TextStyle(
                            fontSize: 16, fontWeight: GoogleFontsWeight.black),
                      )),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context) => MealMenuPage()));
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Image.asset('assets/images/Menu pizaa2.png'),
                  title: Text(
                    'Pepper Pizaa',
                    style: TextStyle(
                        fontWeight: GoogleFontsWeight.black, fontSize: 16),
                  ),
                  subtitle: Text(
                    '5kg box of pizaa',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  trailing: Text('\$15',
                      style: TextStyle(
                          color: Color.fromARGB(255,214, 19, 85),
                          fontSize: 18,
                          fontWeight: GoogleFontsWeight.bold)),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppUI.colorBackground,
          selectedItemColor: Color.fromARGB(255,214, 19, 85),
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          onTap: (val) {
            setState(() {
              selectedIndex = val;
              Navigator.push(context, MaterialPageRoute(builder:(context) => screens[selectedIndex],));
            });
          },
          items:  [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                backgroundColor: Color.fromARGB(255,214, 19, 85),
                label: Text('$cartcounter'),
                child: Icon(Icons.shopping_cart),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'Profile',
            )
          ]),
    );
  }
}