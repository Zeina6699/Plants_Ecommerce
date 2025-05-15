import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key,required this.onPressed,required this.data});
final String data;
final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed, 
    child: Text(data,style: TextStyle(color: Colors.black, fontSize:20)));
  }
}