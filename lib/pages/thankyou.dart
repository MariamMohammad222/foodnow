import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodnow/pages/home_page_mohamed.dart';
class ThankYouScreen extends StatefulWidget {
  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  double _rating = 3.0;
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),(){
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) => HomePage()),(route) => false);

    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/app background2.jpg'),
                    //////////  backgroundddddd
                    fit: BoxFit.cover,
                    opacity: 0.1,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Color.fromARGB(255,214, 19, 85),
                        size: 90,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Thank You!',
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Order Completed',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 118, 117, 117),
                        ),
                      ),

                      SizedBox(height: 20),
                      RatingBar.builder(
          initialRating: _rating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          }
                      )
                      
                      
                    
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  }
}