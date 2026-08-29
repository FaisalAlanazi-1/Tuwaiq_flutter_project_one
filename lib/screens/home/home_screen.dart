
import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/data.dart';

import 'package:faisal_alanazi_proj1/screens/home/widgets/home_body.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function mangePlace ; 
    final Set<Map<String, dynamic>> favoritePlaces ; 
  HomeScreen({super.key, required this.mangePlace, required this.favoritePlaces});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late var listOfPlaces;


  @override
  void initState() {
    listOfPlaces = places;

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
