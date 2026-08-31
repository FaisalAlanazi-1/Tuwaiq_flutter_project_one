#  Saudi Explorer — Tourism App

> A Flutter mobile app for discovering Saudi Arabia's top tourist destinations — from ancient heritage sites to breathtaking mountains and modern coastal cities.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20Android-lightgrey?style=for-the-badge)

---

## 📖 Overview

**Saudi Explorer** is a mobile travel app built with Flutter that showcases some of Saudi Arabia's most iconic destinations — including Hegra (AlUla), At-Turaif District (Diriyah), Historic Jeddah, Al-Ahsa Oasis, and Kingdom Centre Tower.

Each destination includes a custom flat-illustration image, a short description sourced from UNESCO and verified references, a rating, and a favoriting system — all wrapped in a clean, custom design system built from scratch to match a purple-themed UI kit.

---

## ✨ What's Covered

- 🧱 **Layout widgets** — `Column`, `Row`, `Stack`, `Padding`, `SizedBox`, `Expanded`
- 🎠 **Carousel & Grid** — `CarouselSlider`, `GridView.builder`
- 🔤 **Custom typography** — `google_fonts` (Merriweather + Source Sans 3), centralized `AppTextStyles`
- 🎨 **Centralized theming** — `AppColors` constants for text and icon colors
- 📍 **Navigation** — `IndexedStack` for bottom tab switching, `Navigator.push` for detail screens
- ❤️ **Favorites system** — toggle favorite places with live UI updates via `ValueNotifier`
- 🖼️ **Media widgets** — `Image.asset`, custom `Icon` states (filled/outlined)
- 📦 **Structural widgets** — `Scaffold`, `AppBar`, custom floating bottom navigation bar
- ⭐ **Shared components** — reusable `PlaceRating` widget used across Home and Detail screens
- 🚪 **Splash screen** — dedicated onboarding/welcome screen shown on app launch

---

## 📸 Screenshot

<img width="500"  alt="Screenshot_1788029594" src="https://github.com/user-attachments/assets/8e45d797-e8d3-4735-994e-68c045ca6f4a" />
<img width="500"  alt="Screenshot_1788029617" src="https://github.com/user-attachments/assets/a2c20427-3365-43da-a7a2-c189904106a2" />
<img width="500" lt="Screenshot_1788029640" src="https://github.com/user-attachments/assets/9ee12c24-c56d-45fc-bfb0-49789e19ddc8" />
<img width="500"  alt="Screenshot_1788029644" src="https://github.com/user-attachments/assets/ca934417-7343-4b2e-a8ea-ef640e661382" />
<img width="500"  alt="Screenshot_1788029658" src="https://github.com/user-attachments/assets/aec0b11c-2bf4-46d2-8f9e-06bd543f2bde" />



---
## 🎥 Demo



https://github.com/user-attachments/assets/ce0e91ed-aeb1-4b2e-bb15-af5c2b47e77c



---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed and configured
- An emulator/simulator or physical device
- A code editor (VS Code or Android Studio recommended)

### Run the project

```bash
# Clone the repository
git clone https://github.com/FaisalAlanazi-1/Tuwaiq_flutter_project_one.git
cd Tuwaiq_flutter_project_one

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Check your setup

```bash
flutter doctor
```

---

## 📁 Project Structure

```
Tuwaiq_flutter_project_one/
├── lib/
│   ├── data.dart
│   ├── main.dart
│   ├── root.dart
│   │
│   ├── core/
│   │   ├── constants/
│   │   │   ├── app_colors.dart
│   │   │   └── text_styles.dart
│   │   ├── gen/
│   │   │   └── assets.dart
│   │   └── widget/
│   │       └── place_rating.dart
│   │
│   └── screens/
│       ├── favorite/
│       │   └── favorite_screen.dart
│       │
│       ├── home/
│       │   ├── home_screen.dart
│       │   └── widgets/
│       │       ├── favorite_button.dart
│       │       ├── home_body.dart
│       │       └── place_card.dart
│       │
│       ├── place_detail/
│       │   ├── placedetail_screen.dart
│       │   └── widget/
│       │       ├── back_button.dart
│       │       ├── description_widget.dart
│       │       └── location_widget.dart
│       │
│       └── splash/
│           └── splash_screen.dart
│
├── assets/
│   └── images/
│
├── pubspec.yaml
└── README.md
```

---

## 🧠 Key Takeaways

- Splitting UI into `screens/` + `widgets/` per feature keeps each screen self-contained and easy to navigate.
- Sharing mutable state (like favorites) across screens works safely through parent-level state lifting, or `ValueNotifier` when you want to avoid unnecessary full-tree rebuilds.
- A centralized `AppColors` / `AppTextStyles` system keeps the UI visually consistent and makes future redesigns a one-file change instead of a search-and-replace across the whole codebase.

---

## 📚 Related Resources

- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Flutter Layout Cheat Sheet](https://docs.flutter.dev/ui/layout)


---

Made with 💜 while learning Flutter, one screen at a time.
