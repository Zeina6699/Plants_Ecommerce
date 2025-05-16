import 'package:flutter/material.dart';
import 'package:plants_e_commerce/screens/details_page.dart';
import 'package:plants_e_commerce/screens/home_page.dart';
import 'package:plants_e_commerce/screens/login_page.dart';
import 'package:plants_e_commerce/screens/register_page.dart';


void main() {
  runApp(const PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(useMaterial3: false),
      routes: {
        '/login':(context)=>const LoginPage(),
        '/register':(context)=>const RegisterPage(),
        '/home':(context)=>const HomePage(),
        '/details':(context)=> DetailsPage(),
      },
    debugShowCheckedModeBanner: false, 
   initialRoute: '/details');
  }
}
