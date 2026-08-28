import 'package:faisal_alanazi_proj1/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/data.dart';
import 'package:faisal_alanazi_proj1/screens/home/widgets/home_body.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var listOfPlaces = places;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Discover', style: AppTextStyles.screenTitle),
      ),
      body: HomeBody(listOfPlaces: listOfPlaces),
    );
  }
}
