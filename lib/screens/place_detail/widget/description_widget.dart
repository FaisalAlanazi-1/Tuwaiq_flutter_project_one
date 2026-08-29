import 'package:faisal_alanazi_proj1/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.place,
  });

  final Map<String, dynamic> place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text('Description', style: AppTextStyles.sectionTitle),
        Text(
          place['description'],
          style: AppTextStyles.bodyText,
        ),
      ],
    );
  }
}