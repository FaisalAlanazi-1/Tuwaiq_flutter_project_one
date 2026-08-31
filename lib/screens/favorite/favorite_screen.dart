import 'package:faisal_alanazi_proj1/core/constants/app_colors.dart';
import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/model/place_model.dart';
import 'package:faisal_alanazi_proj1/screens/place_detail/placedetail_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final Set<PlaceModel> favoritePlaces;
  const FavoriteScreen({super.key, required this.favoritePlaces});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites', style: AppTextStyles.headlineLarge),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListView.builder(
          itemCount: favoritePlaces.length,
          itemBuilder: (context, index) {
            final place = favoritePlaces.elementAt(index);
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlacedetailScreen(place: place),
                  ),
                );
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          child: Image.asset(place.image, fit: BoxFit.fill),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: AppTextStyles.cardTitleSmall.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              place.location,
                              style: AppTextStyles.locationText,
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: AppColors.iconRating,
                                ),
                                Text(
                                  '${place.rating}',
                                  style: AppTextStyles.ratingOnLight,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
