import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Provider/cart.dart';
import 'package:plants_e_commerce/constants.dart';
import 'package:plants_e_commerce/data/data.dart';
import 'package:plants_e_commerce/widgets/custom_appBar.dart';
import 'package:plants_e_commerce/widgets/custom_elevated_button.dart';
import 'package:provider/provider.dart'; 

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final instance=Provider.of<Cart>(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        title:const Text('CheckOut'),
        actions:const [CustomAppbar()],
        
      ),
      body:Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [      
         Expanded(
          child: ListView.builder(
          
            itemCount:instance.selectedPlants.length ,
            itemBuilder:(context,index){
            return Card(
              
              child: ListTile(
                contentPadding:const EdgeInsets.all(1),
                leading:CircleAvatar(
                 radius: 50,
                  backgroundImage: AssetImage(
                    bundle:null ,
                    instance.selectedPlants[index].image)),
                title:Text('Product ${index+1}'),
                            subtitle: Text('${instance.selectedPlants[index].price}=${instance.selectedPlants[index].location}'),
          
                trailing: IconButton(onPressed: (){
                  instance.remove(instance.selectedPlants[index]);
                },
                 icon:const Icon(Icons.remove)),
              ),
            );
          
            
            }),
        ),
        
        CustomElevatedButton(data: 'Pay ${instance.price}')
            ]),
      )
    
    ));
  }
}