import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Provider/cart.dart';
import 'package:plants_e_commerce/screens/checkOut_page.dart';
import 'package:plants_e_commerce/screens/details_page.dart';
import 'package:plants_e_commerce/screens/home_page.dart';
import 'package:plants_e_commerce/screens/login_page.dart';
import 'package:plants_e_commerce/screens/register_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
         theme: ThemeData(useMaterial3: false),
        routes: {
          '/login':(context)=>const LoginPage(),
          '/register':(context)=>const RegisterPage(),
          '/home':(context)=>HomePage(),
          '/details':(context)=> DetailsPage(),
           '/checked':(context)=> CheckoutPage()
        },
      debugShowCheckedModeBanner: false, 
         initialRoute: '/home'),
    );
  }
}
