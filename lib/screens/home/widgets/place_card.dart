import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/screens/home/widgets/favorite_button.dart';
import 'package:faisal_alanazi_proj1/core/widget/place_rating.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final Map<String, dynamic> place;
  final bool? isFavoriteTop;
  final Set<Map<String, dynamic>> favoritePlaces;
  final Function mangePlace;

  const PlaceCard({
    super.key,

    this.isFavoriteTop,
    required this.place,
    required this.mangePlace,
    required this.favoritePlaces,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFav = favoritePlaces.any((e) => e['name'] == place['name']);

    return Card(
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.asset(place['image'], fit: BoxFit.fill),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                color: Colors.black.withValues(alpha: 0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    // name and favorite button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            place['name'],
                            style: AppTextStyles.cardTitleSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Visibility(
                          visible: false,
                          child: FavotiteButton(
                            isSelected: isFav,
                            mangePlace: mangePlace,
                            place: place,
                          ),
                        ),
                      ],
                    ),

                    // place rating widget
                    PlaceRating(rating: place['rating']),
                  ],
                ),
              ),
            ),
          ),
          isFavoriteTop == true
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  top: 90,
                  child: FavotiteButton(
                    isSelected: isFav,
                    mangePlace: mangePlace,
                    size: 17,
                    place: place,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
