import 'package:flutter/material.dart';
import 'package:foodnow/pages/home_page_mohamed.dart';
import 'package:foodnow/pages/popular_meal_menu.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/build_info_row.dart';
import 'edit_profile.dart';
import 'package:foodnow/pages/signuppage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
signuppage ?sign;
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const String profilepic = "assets/images/profilepic.png" ;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/Pattern.png", scale: 0.5,),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                    ),
                  ),
                  Positioned(
                    top: 33,
                    left: 12,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Color.fromARGB(255,214, 19, 85),size: 30,),
                      onPressed: (){Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> HomePage()),(route)=> false);},
                    ),
                  ),
                  Positioned(
                    top: 33,
                    right: 12,
                    child: IconButton(
                      icon: Icon(Icons.notifications_none_outlined, color: Color.fromARGB(255,214, 19, 85),size: 30),
                      onPressed: () {
                        // Handle notifications button press
                      },
                    ),
                  ),
                  Positioned(
                    top: 85,
                    left: 16,
                    child: Text(
                      'Profile',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 150,
                    child: Stack(
                        children: [
                          SizedBox(
                            width: 120, height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(image: AssetImage(profilepic)
                              ),),
                          ),
                         
                        ] ),
                  ),
                ],
              ),
              // SizedBox(height: 5),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                      'Personal Info',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        buildInfoRow('Your name', ''),
                        buildInfoRow('Occupation', '*********'),
                        buildInfoRow('Employer', '***********'),
                        buildInfoRow('Location', '*******'),],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                      'Contact Info',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                        children: [
                          buildInfoRow('Phone number', '***************'),
                          buildInfoRow('Email', '***************'),]
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> EditProfile()),(route)=> false);},
                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255,214, 19, 85)),
                    child:  Text('Edit', style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              )],
          ),

        ),

      ),
    );
  }
}