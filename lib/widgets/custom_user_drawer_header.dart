
import 'package:flutter/material.dart';

class CustomUserDrawerHeader extends StatelessWidget {
  const CustomUserDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/pp.jpg'),fit: BoxFit.cover)),
      accountName:Text('Zeina Hamad',style: TextStyle(color: Colors.black),),
       accountEmail:Text('zenahhamad25@gmail.com'),
      currentAccountPicture: CircleAvatar(
        radius: 55,
        backgroundImage:AssetImage('assets/images/zeze.png' ) ,
      ),
       
       );
  }
}
