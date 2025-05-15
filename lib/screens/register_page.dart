import 'package:flutter/material.dart';
import 'package:plants_e_commerce/widgets/custom_elevated_button.dart';
import 'package:plants_e_commerce/widgets/custom_text_button.dart';
import 'package:plants_e_commerce/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 64,),
                           CustomTextField(hintText: 'Enter your user name :',keyboardType: TextInputType.emailAddress),
              const  SizedBox(height: 30),
               CustomTextField(hintText: 'Enter your email :',keyboardType: TextInputType.text),
              const SizedBox(height: 30),
              CustomTextField(hintText:'Enter your Password :',obscureText: true,)
             ,const SizedBox(height: 30),
            const CustomElevatedButton(data: 'Register'),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Don't have an account ?",style: TextStyle(fontSize:18 ),),
                CustomTextButton(data:'Sign in' ,onPressed: (){Navigator.pop(context);})
              ],
             )
              ],
            ),
          ),
        ),
      );
    
  }
}