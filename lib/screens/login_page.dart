import 'package:flutter/material.dart';
import 'package:plants_e_commerce/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          children: [
          const SizedBox(height: 64,),
           CustomTextField(hintText: 'Enter your Email :',keyboardType: TextInputType.emailAddress),
          const SizedBox(height: 30),
          CustomTextField(hintText:'Enter your Password :',)
          ],
        ),
      ),
    );
  }
}