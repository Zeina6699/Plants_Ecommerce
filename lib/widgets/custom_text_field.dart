import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.keyboardType= TextInputType.text,this.obscureText = false,required this.hintText});
  TextInputType? keyboardType;
bool obscureText = false;
String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:keyboardType,
      obscureText:obscureText,
      decoration: InputDecoration(
        hintText:hintText,
        enabledBorder: OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
    ,filled: true,
   // fillColor: Colors.pink,
    contentPadding: EdgeInsets.all(11)
      ),
    );
  }
}