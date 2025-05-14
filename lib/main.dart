import 'package:flutter/material.dart';
import 'package:plants_e_commerce/screens/login_page.dart';

void main() {
  runApp(const PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false, 
   home:LoginPage() );
  }
}
