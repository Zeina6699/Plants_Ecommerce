import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Models/plants_model.dart';
import 'package:plants_e_commerce/Provider/cart.dart';
import 'package:plants_e_commerce/constants.dart';
import 'package:plants_e_commerce/data/data.dart';
import 'package:plants_e_commerce/widgets/custom_appBar.dart';
import 'package:plants_e_commerce/widgets/custom_drawer.dart';
import 'package:plants_e_commerce/widgets/custom_list_tile.dart';
import 'package:plants_e_commerce/widgets/custom_user_drawer_header.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  PlantsModel? plant;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:KPrimaryColor,
          title:const Text("Home"),
          actions:const [
            CustomAppbar()
     ])
         ,drawer:const CustomDrawer(),
         body: GridView.builder(
itemCount: plantList.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            crossAxisSpacing: 10,
            childAspectRatio: 2/2,
            mainAxisSpacing: 10
            
            ), 
          itemBuilder:(context,index){
            
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: (){
Navigator.pushNamed(context,'/details',arguments:plantList[index]);
                },
                child: GridTile(
                 
                  footer: GridTileBar(
                     backgroundColor:KPrimaryColor.withOpacity(.6),
                    leading: Text('\$''${plantList[index].price}',style: TextStyle(fontWeight: FontWeight.bold),),
                   //   '\$ 12.55'),
                    title:const Text(""),
                    trailing: Consumer<Cart>(
                      builder: (context,cc,child){
                        return IconButton(
                        onPressed:(){
                          cc.add(plantList[index]);
                        }, 
                        icon:const Icon(Icons.add,color:Colors.black,));
           } )
                  ),
                  child:Stack(
                  children: [
                    Positioned(
                      top: -8,
                      bottom: -9,
                      right:10,
                      left: 10,
                      child: ClipRRect
                    (
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(plantList[index].image,fit: BoxFit.cover)),
                  )])),
              ),
            );
          }),
         )
    );
  
  }
}

