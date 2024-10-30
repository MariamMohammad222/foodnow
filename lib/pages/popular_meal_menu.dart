import 'package:flutter/material.dart';
import 'package:foodnow/pages/home_page_mohamed.dart';
import 'package:foodnow/pages/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MealMenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> meals = [
    {
      "imageUrl": 'assets/images/chicken.png',
      "itemName": 'Chicken Spaghetti',
      "description": '1 Big Pack',
      "price": "\$7"
    },
    {
      "imageUrl": 'assets/images/rice.png',
      "itemName": 'Jollof Rice',
      "description": '1 Combo pack',
      "price": "\$12"
    },
    {
      "imageUrl": 'assets/images/pancakes.png',
      "itemName": 'Fruity Pancakes',
      "description": 'Noodle Home',
      "price": "\$8"
    },
    {
      "imageUrl": 'assets/images/pizza.png',
      "itemName": 'Pepper Pizza',
      "description": '5kg box of Pizza',
      "price": "\$11"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Pattern.png",
                    scale: 0.5,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(),
                  ),
                  Positioned(
                    top: 33,
                    left: 12,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255,214, 19, 85),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                                (route) => false);
                      },
                    ),
                  ),
                  Positioned(
                    top: 33,
                    right: 12,
                    child: IconButton(
                      icon: Icon(Icons.notifications_none_outlined,
                          color: Color.fromARGB(255,214, 19, 85), size: 30),
                      onPressed: () {
                        // Handle notifications button press
                      },
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 15,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 5),
                      child: Text(
                        "Meal Menu",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 17,
                    right: 17,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Color.fromARGB(255, 240, 238, 238),
                        filled: true,
                      ),
                    ),
                  ),
                ],
              )),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final meal = meals[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: MealItem(
                      imageUrl: meal['imageUrl']!,
                      itemName: meal['itemName']!,
                      description: meal['description']!,
                      price: meal['price']!,
                    ),
                  );
                },
                childCount: meals.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final String description;
  final String price;

  MealItem({
    required this.imageUrl,
    required this.itemName,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                imageUrl,
              )),
          title: Text(itemName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          subtitle: Text(
            description,
            style: TextStyle(fontSize: 12),
          ),
          trailing: Text('$price',
              style: TextStyle(
                  color: Color.fromARGB(255,214, 19, 85),
                  fontWeight: FontWeight.w900,
                  fontSize: 22)),
        ),
      ),
    );
  }
}