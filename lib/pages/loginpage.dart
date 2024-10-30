
import 'package:alhamdllelah/firebase_autho_/firebaseServices.dart';
import 'package:alhamdllelah/firebase_autho_/showtoast.dart';
import 'package:alhamdllelah/pages/onboardingscreen.dart';
import 'package:alhamdllelah/widgets/widget2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_sign_in/google_sign_in.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

bool isSigning=false;

class _loginpageState extends State<loginpage> {
 final FirebaseAuthService _auth = FirebaseAuthService();
 
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 TextEditingController _email = TextEditingController();
 TextEditingController _password = TextEditingController();

  void dispose(){
    
    _email.dispose();
    _password.dispose();
    super.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column( 
          children: [
            
             SizedBox(
               height: 20,
             ),
            FormContainerWidget(
              controller: _email,
              hintText: "Email",
              isPasswordField: false,
            ),
             SizedBox(
               height: 20,
             ),
          FormContainerWidget(
            controller: _password,
            hintText: "password",
            isPasswordField: true,
      
          ),
             
              SizedBox(height: 50,),
                   Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(color: Color.fromARGB(255,214, 19, 85), borderRadius: BorderRadius.circular(8)),
                   // color: Colors.red,
                    child: TextButton( onPressed: _signIn, child: isSigning? CircularProgressIndicator(color: Colors.white,) :Text('Login',style:
                     TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.white),)
                                   )),
                  SizedBox( height: 30,),
                  
                   Container(
                    height: 80,
                    width: 350,
                    
                    decoration: BoxDecoration(color:Color.fromARGB(255, 215, 211, 212), borderRadius: BorderRadius.circular(8)),
                   // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image(image:AssetImage('assets/images/icons8-google-50 (1).png')),
                          ),
                        
                        
                        TextButton(onPressed:_signInWithGoogle, child:Text('Login with google',style:
                         TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color.fromARGB(255, 0, 0, 0)),)
                                        ),
                      ],
                    ))
                   
        
        
          ],
        ),
      ),
    );
  }
    void _signIn() async {

      setState(() {
        isSigning=true;
      });
    

    String email = _email.text;
    String password = _password.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
        isSigning=false;
      });

    if (user != null) {
      showToast(message: "User is successfully signed in");
      Navigator.push(context,MaterialPageRoute(builder:(context) => onboardingscreen(),));
    } else {
      showToast(message: "some error occured");
    }
  }
  _signInWithGoogle()async{

    final GoogleSignIn _googleSignIn = GoogleSignIn();

    try {

      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if(googleSignInAccount != null ){
        final GoogleSignInAuthentication googleSignInAuthentication = await
        googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        await _firebaseAuth.signInWithCredential(credential);
        Navigator.push(context,MaterialPageRoute(builder:(context) => onboardingscreen(),));
      }

    }catch(e) {
showToast(message: "some error occured $e");
    }


  }
}