import 'package:faisal_alanazi_proj1/constants/app_colors.dart';
import 'package:faisal_alanazi_proj1/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceRating extends StatelessWidget {
  const PlaceRating({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: rating,
          itemBuilder: (context, index) =>
              Icon(Icons.star, color: AppColors.iconRating),
          itemCount: 5,
          itemSize: 14,
          direction: Axis.horizontal,
        ),
        Text('$rating', style: AppTextStyles.ratingOnImage),
      ],
    );
  }
}
