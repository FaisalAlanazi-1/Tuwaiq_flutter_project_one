import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';



class AppTextStyles {
  AppTextStyles._(); 

  
  
  

  
  static TextStyle headlineLarge = GoogleFonts.merriweather(
    fontSize: 24,
    fontWeight: FontWeight.w900, 
    color: AppColors.textPrimary,
  );

  
  static TextStyle welcomeTitle = GoogleFonts.merriweather(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.textSecondary,
  );

  
  static TextStyle cardTitleLarge = GoogleFonts.merriweather(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnImage,
  );

  
  static TextStyle sectionTitle = GoogleFonts.merriweather(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  
  static TextStyle sectionSubtitle = GoogleFonts.merriweather(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  
  static TextStyle cardTitleSmall = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnImage,
  );

  
  static TextStyle screenTitle = GoogleFonts.merriweather(
    fontSize: 27,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  
  static TextStyle buttonText = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textOnImage,
  );

  
  static TextStyle linkText = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  
  
  

  
  static TextStyle tabActive = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.w900, 
    color: AppColors.iconNavBar,
  );

  
  static TextStyle counterText = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.w900, 
    color: AppColors.textPrimary,
  );

  
  static TextStyle priceLarge = GoogleFonts.sourceSans3(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  
  static TextStyle priceUnit = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  
  static TextStyle ratingOnImage = GoogleFonts.sourceSans3(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnImage,
  );

  
  static TextStyle ratingOnLight = GoogleFonts.sourceSans3(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  
  static TextStyle locationText = GoogleFonts.sourceSans3(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  
  static TextStyle semiBoldText = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.w600, 
    color: AppColors.textPrimary,
  );

  
  static TextStyle bodyText = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  
  static TextStyle tabInactive = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  
  static TextStyle welcomeDescription = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: const Color(0xFF6B6B6B), 
    height: 1.4, 
  );
}
