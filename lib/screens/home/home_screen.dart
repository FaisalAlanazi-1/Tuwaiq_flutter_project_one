
import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/data/data.dart';
import 'package:faisal_alanazi_proj1/model/place_model.dart';

import 'package:faisal_alanazi_proj1/screens/home/widgets/home_body.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function mangePlace ; 
    final Set<PlaceModel> favoritePlaces ; 
  HomeScreen({super.key, required this.mangePlace, required this.favoritePlaces});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PlaceModel> listOfPlaces = [];
 
 getData(){
  for (var element in places) {
    listOfPlaces.add(PlaceModel.fromJson(element));
  }
 }

  @override
  void initState() {
    getData()  ; 

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Discover', style: AppTextStyles.screenTitle),
      ),
      body: HomeBody(listOfPlaces: listOfPlaces ,  favoritePlaces:widget.favoritePlaces , mangePlace: widget.mangePlace,),

    );
  }
}
