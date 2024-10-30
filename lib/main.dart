import 'package:alhamdllelah/pages/homepage.dart';
import 'package:alhamdllelah/pages/onboardingscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if(kIsWeb)
  {
    await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyA02g3DTthmc7XeReTZCFS6Ez0LG24xYac",
      appId: "1:278416630703:web:6eb8fd80854ec219c3c55a",
      messagingSenderId: "278416630703", 
      projectId: "fooodapp-c5ac4"
      )
      );

  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}