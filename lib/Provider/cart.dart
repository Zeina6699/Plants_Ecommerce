import 'package:flutter/material.dart';
import 'package:plants_e_commerce/Models/plants_model.dart';

class Cart with ChangeNotifier{

  String myName='Zeina';
  double price=0;
  List selectedPlants=[];

  add(PlantsModel plant){
    selectedPlants.add(plant);
    price+=plant.price.round();
    notifyListeners();
  }
  
 void remove(PlantsModel plant) {
    if (selectedPlants.contains(plant)) {
      selectedPlants.remove(plant);
      price -= plant.price.round();
      price = price >= 0 ? price : 0; // تأكد من أن السعر لا يصبح سالبًا
      notifyListeners();
    }
  }

}