import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';

import 'package:faisal_alanazi_proj1/model/place_model.dart';

import 'package:faisal_alanazi_proj1/screens/home/widgets/home_body.dart';
import 'package:faisal_alanazi_proj1/service/database.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function mangePlace;
  final Set<PlaceModel> favoritePlaces;
  HomeScreen({
    super.key,
    required this.mangePlace,
    required this.favoritePlaces,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PlaceModel> listOfPlaces = [];

  //  getData(){
  //   for (var element in places) {
  //     listOfPlaces.add(PlaceModel.fromJson(element));
  //   }
  //  }

  @override
  void initState() {
    // getData()  ;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Discover', style: AppTextStyles.screenTitle),
      ),
      body: FutureBuilder(
        future: Database().getAllPlaces(),
        builder: (context, snapshot) {
          print('State: ${snapshot.connectionState}');
          print('Data: ${snapshot.data}');
          print('Error: ${snapshot.error}');

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            final places = snapshot.data!;

            return HomeBody(
              listOfPlaces: places,
              favoritePlaces: widget.favoritePlaces,
              mangePlace: widget.mangePlace,
            );
          }

          return const Center(child: Text('No Data'));
        },
      ),
    );
  }
}
