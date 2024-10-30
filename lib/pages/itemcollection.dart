import 'package:alhamdllelah/fonts/fonts.dart';
import 'package:alhamdllelah/models/itemburgermodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class itemcollectionscreen extends StatelessWidget {
   itemcollectionscreen({super.key,required this.itemburgermodel});
   Itemburgermodel itemburgermodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
       padding: EdgeInsets.all(18),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          
           crossAxisCount:3,
           
          ),
        itemCount: 6,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
       padding: EdgeInsets.all(10),
       width: 220,
       height: 260,
       decoration: BoxDecoration(
         color: Colors.grey[100],
         borderRadius: BorderRadius.circular(20),
       ),
       child: Column(
         children: [
           Image.asset(itemburgermodel.image,width: 90,height: 80,),
           Text(
             itemburgermodel.title,
             style:
                 TextStyle(fontWeight: GoogleFontsWeight.bold, fontSize: 18),
           ),
           SizedBox(
             height: 10,
           ),
           Text(
             itemburgermodel.description,
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
                 itemburgermodel.salary,
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
          );
        }
          
             )
    );
  }
}