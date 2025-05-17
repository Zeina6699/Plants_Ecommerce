import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Models/plants_model.dart';
import 'package:plants_e_commerce/Provider/cart.dart';
import 'package:plants_e_commerce/constants.dart';
import 'package:plants_e_commerce/data/data.dart';
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
          title:Consumer<Cart>(builder:(context,test,child){
            return Text('${test.myName}');
          }),
          //const Text("Home"),
          actions: [
            Consumer<Cart>(
        builder: (context,ccc,child){
          return Row(
                children: [
                    
                     //الستاك مشان نخلي ال8 فوق الايقونة           
                    Stack(
                        children: [
                      //الكونتستر مشان نخلي 
                      //شكلو دائري
               Positioned(
                      bottom: 22,
                      right:30,
                        child: Container( 
              alignment: Alignment.center,
                        padding:const EdgeInsets.all(4),
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(211,164,255, 193)
              ),
                        
              child: Center(child: Text('${ccc.selectedPlants.length}'
               // '0'
                ,style: TextStyle(fontSize: 18))),),
                      ),
                       IconButton(onPressed:(){} , icon:const  Icon(Icons.add_shopping_cart))
                      
                      ]
                      )
                     
            
        , Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text('${ccc.price}',
            
         //   '\$ 0',
            style: TextStyle(fontSize: 18)),
        ),
        ],
      
      
         ); }
          )  ])
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
                    leading:const Text('\$ 12.55'),
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

