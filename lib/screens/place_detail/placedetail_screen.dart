import 'package:faisal_alanazi_proj1/core/constants/app_colors.dart';
import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/core/widget/place_rating.dart';
import 'package:faisal_alanazi_proj1/model/place_model.dart';
import 'package:faisal_alanazi_proj1/screens/place_detail/widget/back_button.dart';
import 'package:faisal_alanazi_proj1/screens/place_detail/widget/description_widget.dart';
import 'package:faisal_alanazi_proj1/screens/place_detail/widget/location_widget.dart';
import 'package:flutter/material.dart';

class PlacedetailScreen extends StatelessWidget {
  final PlaceModel place;
  const PlacedetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.asset(place.image, fit: BoxFit.fill),
            ),

            // back button
            BackButtonWidget(),

            // content
            ContentWidget(place: place),
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key, required this.place});

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: MediaQuery.of(context).size.height * 0.37,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(place.name, style: AppTextStyles.headlineLarge),
            SizedBox(height: 10),
            //location
            LocationWidget(place: place),
            // rating
            SizedBox(height: 10),
            PlaceRating(rating: place.rating, textColor: Colors.black),
            // description
            SizedBox(height: 30),
            DescriptionWidget(place: place),
            // price and book button
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$400', style: AppTextStyles.priceLarge),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  onPressed: () {},
                  child: Text('Book Now', style: AppTextStyles.buttonText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
