import 'package:faisal_alanazi_proj1/core/constants/app_colors.dart';
import 'package:faisal_alanazi_proj1/core/constants/gen/assets.dart';
import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:faisal_alanazi_proj1/root.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image.asset(Assets.splashImage, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 40, left: 60, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover\nSaudi Arabia",
                  style: AppTextStyles.welcomeTitle,
                ),
                const SizedBox(height: 12),
                Text(
                  "From ancient heritage sites to breathtaking mountains and "
                  "timeless deserts, explore the wonders of Saudi Arabia.",
                  style: AppTextStyles.welcomeDescription,
                ),

                const SizedBox(height: 20),
ElevatedButton(
  onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Root(),));},
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text("Let's Go!", style: AppTextStyles.buttonText),
      const SizedBox(width: 6),
      Icon(Icons.arrow_forward, color: Colors.white, size: 18),
    ],
  ),
)
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
