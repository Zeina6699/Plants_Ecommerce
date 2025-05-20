import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Provider/cart.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    //الطريقة الاولى لل provider ,وهي provider.of
       final instanse=Provider.of<Cart>(context);
    return   Row(
              children: [
                //الستاك مشان نخلي ال8 فوق الايقونة
                Stack(children: [
                  //الكونتستر مشان نخلي
                  //شكلو دائري
                  Positioned(
                    bottom: 22,
                    right: 30,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(211, 164, 255, 193)),
                      child: Center(
                          child: Text('${instanse.selectedPlants.length}',
                            
                           // '8', 
                            style: TextStyle(fontSize: 18,color: Colors.black))),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
Navigator.pushNamed(context, '/checked');
                      },
                      icon: const Icon(Icons.add_shopping_cart))
                ]),
                 Padding(
                  padding:const EdgeInsets.only(right: 10),
                  child: Text('\$ ''${instanse.price}',
                 //   '\$ 9999', 
                    style:const TextStyle(fontSize: 18)),
                ),
              ],
            );
  }
}
//الطريقة التانية لل provider ,وهي consumer
 /* actions: [
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
                        
              child: Center(
                child: Text('${ccc.selectedPlants.length}'
               // '0'
                ,style:const TextStyle(fontSize: 18,color: Colors.black))),),
                      ),
                       IconButton(onPressed:(){} , icon:const  Icon(Icons.add_shopping_cart))
                      
                      ]
                      )
                     
            
        , Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text('\$ ''${ccc.price}',
            
         //   '\$ 0',
            style: TextStyle(fontSize: 18)),
        ),
        ],
      
      
         ); }
          )  ])*/