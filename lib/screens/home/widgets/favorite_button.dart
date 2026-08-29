import 'package:faisal_alanazi_proj1/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FavotiteButton extends StatelessWidget {
  final double? size;
  final bool isSelected;
  final Map<String, dynamic> place;
  final Function mangePlace;
  FavotiteButton({
    super.key,
    this.size,
    required this.place,
    required this.mangePlace,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () => mangePlace(place),
        child: Icon(
          isSelected ? Icons.favorite : Icons.favorite_border_outlined,
          color: AppColors.iconFavorite,
          size: size ?? 18,
        ),
      ),
    );
  }
}
