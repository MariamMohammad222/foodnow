import 'package:flutter/material.dart';
import 'package:foodnow/pages/profile_page.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const String profilepic = "assets/images/profilepic.png" ;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> ProfilePage()),(route)=> false);}, icon: Icon(LineAwesomeIcons.angle_left_solid, color: Colors.pink[400],)),
          title: Center(child: Text("Edit Profile", style: GoogleFonts.poppins(fontSize: 20, color: Colors.pink[400],),)),
          actions: [
            TextButton(onPressed: (){}, child: Text("Save",style: GoogleFonts.poppins(color: Colors.pink[400], fontSize: 20),))
          ]
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          padding: const EdgeInsets.all(20),
          child: Column(
              children: [
                SizedBox(height: 18,),
                Stack(
                    children: [
                      SizedBox(
                        width: 120, height: 120,
                        child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image(image: AssetImage(profilepic), fit: BoxFit.cover,),),
                      ),
                      Positioned(
                          bottom:0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.pink
                            ),
                            child: Icon(
                              LineAwesomeIcons.camera_solid,
                              color: Colors.pink[100],
                              size: 20,
                            ),
                          )
                      )
                    ] ),
                const SizedBox(height: 50,),
                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Your name", style: GoogleFonts.poppins(),),
                        prefixIcon: Icon(Icons.person_outline_rounded, color: Color(4287179861)),
                        floatingLabelStyle: GoogleFonts.poppins(color: Colors.pink[100]),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Your Phone", style: GoogleFonts.poppins(),),
                        prefixIcon: Icon(Icons.phone, color: Color(4287179861)),
                        floatingLabelStyle: GoogleFonts.poppins(color: Colors.pink[100]),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Your Email", style: GoogleFonts.poppins(),),
                        prefixIcon: Icon(Icons.email_outlined,  color: Color(4287179861)),
                        floatingLabelStyle: GoogleFonts.poppins(color: Colors.pink[100]),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Your Password", style: GoogleFonts.poppins(),),
                        prefixIcon: Icon(Icons.fingerprint, color: Color(4287179861),),
                        floatingLabelStyle: GoogleFonts.poppins(color: Colors.pink[100]),
                      ),
                    ),SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Your Location", style: GoogleFonts.poppins(),),
                        prefixIcon: Icon(Icons.gps_fixed, color: Color(4287179861),),
                        floatingLabelStyle: GoogleFonts.poppins(color: Colors.pink[100]),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Your Occupation", style: GoogleFonts.poppins(),),
                        prefixIcon: Icon(Icons.flag, color: Color(4287179861),),
                        floatingLabelStyle: GoogleFonts.poppins(color: Colors.pink[100]),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ))
              ]),

        ),

      ),
    );
  }
}