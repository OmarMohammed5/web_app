# 🚀 Flutter Responsive Web Application

A professional Flutter Web Application built using clean and scalable architecture principles.

This project demonstrates how to build a modern responsive web application using Flutter & Dart with:

* ✅ Responsive Design
* ✅ Custom Navigation System
* ✅ Named Routing
* ✅ Navigation Service
* ✅ Hover Effects
* ✅ Reusable Widgets
* ✅ Clean Architecture
* ✅ Flutter Web Best Practices

---

# 📱 Responsive Design

This project supports:

* 💻 Desktop Layout
* 📱 Mobile Layout
* 📟 Tablet Layout

Using:

* `LayoutBuilder`
* `MediaQuery`
* `ResponsiveBuilder`
* `ScreenTypeLayout`

The UI automatically adapts based on screen size.

---

# ✨ Features

## ✅ Responsive Web Architecture

The application dynamically changes its layout depending on the device size.

### Desktop
<img width="1920" height="1031" alt="Desktop" src="https://github.com/user-attachments/assets/98b8959f-3df5-40c5-89ee-98b765669270" />
* Row-based layouts
* Larger spacing
* Hover interactions

### Tablet
<img width="957" height="1027" alt="Tablet" src="https://github.com/user-attachments/assets/5b0a7c5d-5dcb-430f-bfcb-c80d5c89c116" />
* Mixed responsive layout
* Optimized spacing

### Mobile
<img width="622" height="1025" alt="Mobile" src="https://github.com/user-attachments/assets/a476b2ca-6c75-46bb-8131-a588c723711e" />
* Column-based layouts
* Scrollable content
* Mobile-friendly UI

---

# 🧠 Navigation System

This project uses a custom navigation architecture using:

* `Navigator`
* `NavigationService`
* `GetIt`
* Named Routing

---

# 🔥 Custom Navigation Service

The project contains a reusable `NavigationService` that allows navigation from anywhere in the app without needing `BuildContext`.

Example:

```dart
locator<NavigationService>()
    .navigateTo(HomeRoute);
```

---

# 🧭 Named Routing

Routes are managed using route names:

```dart
const String HomeRoute = "home";
const String AboutRoute = "about";
const String EpisodesRoute = "episodes";
```

And generated dynamically using:

```dart
generateRoute()
```

---

# 🎨 Hover Effects

Flutter Web Hover Effects are implemented using:

* `MouseRegion`
* `AnimatedContainer`
* `AnimatedOpacity`
* `Transform`

Reusable hover architecture was used to separate:

* UI
* Hover Logic

Example:

```dart
HoverBuilder(
  builder: (isHovered) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
    );
  },
)
```

---

# 🧱 Project Structure

```bash
lib/
│
├── core/
│   ├── routing/
│   ├── services/
│   └── locator.dart
│
├── features/
│   └── home/
│       ├── presentation/
│       │   ├── views/
│       │   ├── widgets/
│       │   └── responsive/
│
├── shared/
│
└── main.dart
```

---

# 🧩 Technologies Used

* Flutter
* Dart
* Flutter Web
* GetIt
* Responsive Builder
* Clean Architecture

---

# 🛠 Responsive Techniques Used

* `Expanded`
* `Flexible`
* `LayoutBuilder`
* `MediaQuery`
* `SingleChildScrollView`
* `MouseRegion`

---

# 🌟 Animations

Custom page transition animations using:

* `PageRouteBuilder`
* `FadeTransition`

Example:

```dart
FadeTransition(
  opacity: animation,
  child: child,
)
```

---

# 📚 What I Learned

Through this project I practiced:

* Responsive Flutter Web Design
* Flutter Navigation Architecture
* Custom Routing Systems
* Clean Code Organization
* Reusable UI Components
* Hover Effect Architecture
* Web Application UX Concepts

---

# 🔥 Future Improvements

* Add State Management (Bloc / Riverpod)
* Add Authentication
* Add Real Backend APIs
* Add SEO Optimization
* Add Dark Mode
* Improve Web Performance

---

# 🚀 Run Project

```bash
flutter pub get
flutter run -d chrome
```

---

# 🌐 Build Web Version

```bash
flutter build web --release
```

---

# 👨‍💻 Author

Built with ❤️ using Flutter Web.
