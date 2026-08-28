
import 'package:faisal_alanazi_proj1/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/screens/home/widgets/favorite_button.dart';
import 'package:faisal_alanazi_proj1/screens/home/widgets/place_rating.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String image;
  final double rating;
  final bool? isFavoriteTop;
  const PlaceCard({
    super.key,
    required this.title,
    required this.image,
    required this.rating,
    this.isFavoriteTop,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.asset(image, fit: BoxFit.fill),
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
                            title,
                            style: AppTextStyles.cardTitleSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Visibility(
                          visible: isFavoriteTop != true,
                          child: FavotiteButton(),
                        ),
                      ],
                    ),

                    // place rating widget
                    PlaceRating(rating: rating),
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
                  child: FavotiteButton(size: 17),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}


