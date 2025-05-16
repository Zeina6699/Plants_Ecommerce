import 'package:flutter/material.dart';
import 'package:plants_e_commerce/widgets/custom_list_tile.dart';
import 'package:plants_e_commerce/widgets/custom_user_drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[ Column(
          children: [
            CustomUserDrawerHeader(),
            CustomListTile(onTap: (){},icon: Icons.home,title:'Home' ,),
            CustomListTile(onTap: (){} ,icon:Icons.add_shopping_cart,title: 'My Products',),
            CustomListTile(onTap:(){},icon: Icons.help_center,title: 'About',),
            CustomListTile(onTap: (){},icon: Icons.exit_to_app,title: 'Log Out',) ],
             ),
             Container(margin: EdgeInsets.all(14), child: Text('Developed by Zeina Hamad  ©2025',style: TextStyle(fontWeight: FontWeight.bold),),)
        ],
      
      
    ),
              
            );
  }
}
