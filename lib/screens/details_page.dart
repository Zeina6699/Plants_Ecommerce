import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Models/plants_model.dart';
import 'package:plants_e_commerce/constants.dart';
import 'package:plants_e_commerce/widgets/custom_appBar.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {

 
 const  DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool showMore=false;

  @override
  Widget build(BuildContext context) {
    final PlantsModel plant = ModalRoute.of(context)!.settings.arguments as PlantsModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: KPrimaryColor,
          title:const Text("Details"),
         actions: const[CustomAppbar()]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(plant!.image),
              SizedBox(
                height: 12,
              ),
              Text(
                '\$' '${plant.price}',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
              //  '\$ 122',
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(child: Text('New',style: TextStyle(fontSize: 20),),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4)
                  ),),
                  Row(
                    children: [
                                          Icon(Icons.star,color: Colors.yellow[600],size: 28),
                      Icon(Icons.star,color: Colors.yellow[600],size: 28),
                      Icon(Icons.star,color: Colors.yellow[600],size: 28),
                      Icon(Icons.star,color: Colors.yellow[600],size: 28),
                      Icon(Icons.star,color: Colors.yellow[600],size: 28),
          
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.edit_location),
                      Text(plant.location!,style: TextStyle(fontSize:16),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                child: Text('Details :',style: TextStyle(fontSize:24),textAlign: TextAlign.start))
            ,SizedBox(height:20),
            Text(
              overflow: TextOverflow.fade,
              maxLines:showMore?null:3,
               style: TextStyle(fontSize: 18),
              'Plants are the eukaryotes that form the kingdom Plantae; they are predominantly photosynthetic. This means that they obtain their energy from sunlight, using chloroplasts derived from endosymbiosis with cyanobacteria to produce sugars from carbon dioxide and water, using the green pigment chlorophyll. Exceptions are parasitic plants that have lost the genes for chlorophyll and photosynthesis, and obtain their energy from other plants or fungi. Most plants are multicellular, except for some green algae.')
           ,
           TextButton(
            onPressed: (){
              setState(() {
                showMore=!showMore;
              });
            },
             child:Text(showMore? 'show less':'show more', 
             style: TextStyle(fontSize: 18)))
            ],
          ),
        ),
      ),
    );
  }
}
