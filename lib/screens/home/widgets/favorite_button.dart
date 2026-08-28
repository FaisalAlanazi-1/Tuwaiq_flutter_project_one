import 'package:faisal_alanazi_proj1/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FavotiteButton extends StatelessWidget {
  final double? size;
  const FavotiteButton({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: InkWell(
        onTap: () {},
        child: Icon(
          Icons.favorite,
          color: AppColors.iconFavorite,
          size: size ?? 18,
        ),
      ),
    );
  }
}