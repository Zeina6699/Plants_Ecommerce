import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key,required this.onTap,required this.title,this.icon});
  final void Function()? onTap;
  final String  title;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onTap,
      title:Text(title),
      leading: Icon(icon),
    );
  }
}