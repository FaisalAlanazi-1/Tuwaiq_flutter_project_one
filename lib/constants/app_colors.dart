import 'package:flutter/material.dart';

/// ألوان النصوص والأيقونات المستخدمة في التطبيق
/// (مستبعد منها: خلفيات الصور، الخطوط الفاصلة، ولون الإشعار الأحمر)
class AppColors {
  AppColors._(); // منع إنشاء نسخة من الكلاس

  // ============================================
  // Primary — بنفسجي (نصوص وأيقونات أساسية)
  // ============================================

  /// بنفسجي غامق — أزرار، أيقونات، نص السعر واسم الباقة
  static const Color primaryDark = Color(0xFF6A62B7);

  /// بنفسجي داكن — نص التبويب النشط "Popular"
  static const Color primaryActive = Color(0xFF897CFF);

  // ============================================
  // Neutrals — نصوص محايدة
  // ============================================

  /// أسود — النصوص الرئيسية والأيقونات
  static const Color textPrimary = Color(0xFF202020);

  /// رمادي عامق — العناوين والنص الفرعي
  static const Color textSecondary = Color(0xFF2C2C2C);

  /// أبيض — النصوص فوق الصور
  static const Color textOnImage = Color(0xFFFFFFFF);

  // ============================================
  // Accent — ألوان الأيقونات المميزة
  // ============================================

  /// أصفر ذهبي — أيقونة نجوم التقييم
  static const Color iconRating = Color(0xFFF4D150);

  /// وردي — أيقونة القلب (المفضلة)
  static const Color iconFavorite = Color(0xFFFF54A0);

  /// أزرق فاتح — أيقونات شريط التنقل السفلي
  static const Color iconNavBar = Color(0xFF403A7A);
}