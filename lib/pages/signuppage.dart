
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodnow/firebase_autho_/firebaseServices.dart';
import 'package:foodnow/firebase_autho_/showtoast.dart';
import 'package:foodnow/pages/home_page_mohamed.dart';
import 'package:foodnow/pages/onboardingscreen.dart';
import 'package:foodnow/widgets/widget2.dart';
import 'package:google_sign_in/google_sign_in.dart';





class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}
TextEditingController _username = TextEditingController();
 TextEditingController _phone = TextEditingController();
 TextEditingController _email = TextEditingController();
 TextEditingController _password = TextEditingController();
class _signuppageState extends State<signuppage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 

  void dispose(){
    _username.dispose();
    _phone.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column( 
        children: [
           FormContainerWidget(
            hintText: "User Name",
            controller: _username,
            isPasswordField: false,
           ),
            SizedBox(
             height: 20,
           ),
           FormContainerWidget(
            hintText: "Phone Number",
            controller: _phone,
            isPasswordField: false,
            inputType: TextInputType.phone,
           ),
           SizedBox(
             height: 18,
           ),
          FormContainerWidget(
            hintText: "Email",
            isPasswordField: false,
            controller: _email,
          ),
           SizedBox(
             height: 18,
           ),
        FormContainerWidget(
          hintText: "password",
          isPasswordField: true,
          controller: _password,
          

        ),
           
            SizedBox(height: 28,),

                 Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(color: Color.fromARGB(255,214, 19, 85), borderRadius: BorderRadius.circular(8)),
                 // color: Colors.red,
                  child: TextButton(onPressed:(){
                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => HomePage(),), (route) => false);
                  }, child:Text('Sign up',style:
                   TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.white),)
                                 )),
                SizedBox( height: 18,),
                 Container(
                  height: 70,
                  width: 320,
                  
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
                        
                        
                        TextButton(onPressed:_signInWithGoogle, child:Text('Sign up with google',style:
                         TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Color.fromARGB(255, 0, 0, 0)),)
                         ),
                    ],
                  ))
      
      
        ],
      ),
    );
  }
  void _signup() async{
  String username = _username.text;
  String phone=_phone.text;
  String email=_email.text;
  String password=_password.text;
  User? user = await _auth.signUpWithEmailAndPassword(email, password);
   if (user != null) {
      showToast(message: "User is successfully created");
      Navigator.push(context,MaterialPageRoute(builder:(context) => onboardingscreen(),));
    } else {
      showToast(message: "Some error happend");
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


