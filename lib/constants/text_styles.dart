import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// جميع أنماط النصوص المستخدمة في التطبيق
/// مبنية على تحليل خطوط تصميم Figma: Merriweather + Source Sans Pro
class AppTextStyles {
  AppTextStyles._(); // منع إنشاء نسخة من الكلاس

  // ============================================
  // Merriweather — للعناوين والأسماء (Headlines)
  // ============================================

  /// عنوان رئيسي كبير — مثال: اسم المكان بشاشة التفاصيل (Mount Fuji)
  static TextStyle headlineLarge = GoogleFonts.merriweather(
    fontSize: 24,
    fontWeight: FontWeight.w900, // Black
    color: AppColors.textPrimary,
  );

  /// عنوان ترحيبي كبير جداً — مثال: "Winter Vacation Trips"
  static TextStyle welcomeTitle = GoogleFonts.merriweather(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.textSecondary,
  );

  /// اسم مكان فوق كارد كبير (على خلفية صورة)
  static TextStyle cardTitleLarge = GoogleFonts.merriweather(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnImage,
  );

  /// عنوان قسم — مثال: "Description"
  static TextStyle sectionTitle = GoogleFonts.merriweather(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// عنوان قسم فرعي — مثال: "Recommended"
  static TextStyle sectionSubtitle = GoogleFonts.merriweather(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// اسم مكان فوق كارد صغير (على خلفية صورة)
  static TextStyle cardTitleSmall = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnImage,
  );

  /// عنوان الشاشة الرئيسي — مثال: "Discover"
  static TextStyle screenTitle = GoogleFonts.merriweather(
    fontSize: 27,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  /// نص زر أساسي — مثال: "Let's Go!"
  static TextStyle buttonText = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textOnImage,
  );

  /// رابط ثانوي — مثال: "View All"
  static TextStyle linkText = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  // ============================================
  // Source Sans Pro — للنصوص والتفاصيل
  // ============================================

  /// تبويب نشط/محدد — مثال: "Popular"
  static TextStyle tabActive = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.w900, // Black
    color: AppColors.iconNavBar,
  );

  /// عداد رقمي — مثال: عداد الأيام "5"
  static TextStyle counterText = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.w900, // Black
    color: AppColors.textPrimary,
  );

  /// السعر الرئيسي — مثال: "$400"
  static TextStyle priceLarge = GoogleFonts.sourceSans3(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryDark,
  );

  /// وحدة السعر — مثال: "/Package"
  static TextStyle priceUnit = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryDark,
  );

  /// تقييم على خلفية داكنة (فوق صورة) — مثال: "4.5"
  static TextStyle ratingOnImage = GoogleFonts.sourceSans3(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.textOnImage,
  );

  /// تقييم على خلفية فاتحة — مثال: "4.9"
  static TextStyle ratingOnLight = GoogleFonts.sourceSans3(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// نص الموقع — مثال: "Honshu, Japan"
  static TextStyle locationText = GoogleFonts.sourceSans3(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// نص شبه عريض — مثال: "5 Days"
  static TextStyle semiBoldText = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.w600, // SemiBold
    color: AppColors.textPrimary,
  );

  /// نص وصفي طويل (فقرة الوصف)
  static TextStyle bodyText = GoogleFonts.sourceSans3(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  /// تبويب غير نشط — مثال: "Featured", "Most Visited"
  static TextStyle tabInactive = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}