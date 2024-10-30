import 'package:alhamdllelah/appUI/App.ui.dart';
import 'package:alhamdllelah/fonts/fonts.dart';
import 'package:alhamdllelah/models/categorymodel.dart';
import 'package:flutter/material.dart';



class categoryitem extends StatefulWidget {
  Categorymodel categorymodel;
  categoryitem({
    Key? key,
    required this.categorymodel,
  }) : super(key: key);

  @override
  State<categoryitem> createState() => _categoryitemState();
}

class _categoryitemState extends State<categoryitem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Color.fromARGB(255,214, 19, 85), borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Image.asset(
              widget.categorymodel.icon,
              height: 30,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              widget.categorymodel.categoryname,
              style: TextStyle(
                  fontWeight: GoogleFontsWeight.bold,
                  color: AppUI.colorBackground),
            ),
          ],
        ),
      ),
    );
  }
}