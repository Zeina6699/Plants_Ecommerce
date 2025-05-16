import 'package:flutter/material.dart';
import 'package:plants_e_commerce/constants.dart';
import 'package:plants_e_commerce/data/data.dart';
import 'package:plants_e_commerce/widgets/custom_drawer.dart';
import 'package:plants_e_commerce/widgets/custom_list_tile.dart';
import 'package:plants_e_commerce/widgets/custom_user_drawer_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:KPrimaryColor,
          title: Text("Home"),
          actions: [
            Row(
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
        padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(211,164,255, 193)
          ),
        
          child:   Center(child: Text('8',style: TextStyle(fontSize: 18))),),
      ),
       IconButton(onPressed:(){} , icon:Icon(Icons.add_shopping_cart))
      
      ]
      )
        , Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text('\$ 9999',style: TextStyle(fontSize: 18)),
        ),
        ],
      ),
      
              ],
            )
         ,drawer: CustomDrawer(),
         body: GridView.builder(
itemCount: plantList.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
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

                },
                child: GridTile(
                 
                  footer: GridTileBar(
                     backgroundColor:KPrimaryColor.withOpacity(.6),
                    leading: Text('\$ 12.55'),
                    title: Text(""),
                    trailing: IconButton(
                      onPressed:(){}, 
                      icon:Icon(Icons.add,color:Colors.black,)),
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

