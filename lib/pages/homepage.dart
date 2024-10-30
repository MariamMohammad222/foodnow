
import 'package:alhamdllelah/pages/loginpage.dart';
import 'package:alhamdllelah/pages/signuppage.dart';
import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
   homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
List<Widget>widgest=[ 
  loginpage(),
  signuppage(),
];

 bool isLogin = true;

 void toggleForm() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Padding(
          padding:EdgeInsetsDirectional.all(8),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
              
                children: [
                  Container(
                    height: 250,
                    child: ClipRect(
                      
                      child: Image.asset(
                        'assets/images/onboarding1.PNG',
                        fit: BoxFit.fill,
                      ),
                    ),
              
                  ),
                  SizedBox(height: 10,),
                 Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TextButton(onPressed: () {
                        setState(() {
                      isLogin = false;
                    });
                        
                      },child: Text('create account',style: TextStyle( fontWeight: FontWeight.w700,fontSize: 23,color: isLogin ? Colors.black : Color.fromARGB(255,214, 19, 85)),),),
                      SizedBox(width: 20,),
                       TextButton(onPressed: () {
                         setState(() {
                          isLogin = true;
                          
                    });
                      },child: Text('login',style: TextStyle( fontWeight: FontWeight.w700,fontSize: 23,color: isLogin ? Color.fromARGB(255,214, 19, 85) : Colors.black,),),),
                   ],
                 
                 ),
                 if (isLogin) loginpage() else signuppage(),
                 
                ],
              ),
            ),
          ),
        ),
      );
    
  }
}