import 'package:flutter/material.dart';
import 'package:plants_e_commerce/constants.dart';

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
        , Text('\$ 9999',style: TextStyle(fontSize: 18)),
        ],
      ),
      
              ],
            )
          
        ),
    );
  
  }
}