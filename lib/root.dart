import 'package:faisal_alanazi_proj1/core/constants/app_colors.dart';
import 'package:faisal_alanazi_proj1/screens/favorite/favorite_screen.dart';
import 'package:faisal_alanazi_proj1/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {

  late int index;
Set<Map<String , dynamic>> favoritePlaces = {}  ;
 void mangePlace(Map<String, dynamic> place) {
   setState(() {
      bool isFavorite = favoritePlaces.any((e) {
      return e['name'] == place['name'];
    });
    if (!isFavorite) {
      favoritePlaces.add(place);
    } else {
      favoritePlaces.removeWhere((e) {
        return e['name'] == place['name'];
      });
    }
   });
  } 
 @override
  void initState() {
    index = 0 ; 
   

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final  List<Widget>_screens =  [
    HomeScreen(mangePlace:mangePlace , favoritePlaces: favoritePlaces,) , 
    FavoriteScreen(favoritePlaces: favoritePlaces,)
  ];
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: index,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 0;
                });
               
              },
              child: Icon(
                Icons.home,
                size: 30,
                color: index == 0 ? AppColors.primaryActive : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                });
               
              },
              child: Icon(
                Icons.favorite,
                size: 30,
                color: index == 1 ? AppColors.primaryActive : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}