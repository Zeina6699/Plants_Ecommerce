import 'package:flutter/material.dart';
import 'package:plants_e_commerce/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key,required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}
    , child:Text(data,style: TextStyle(fontSize: 19,color: Colors.white),)
    ,style:ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(kButtonColor),
      padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
      )  );
  }
}