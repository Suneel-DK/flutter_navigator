flutter_navigator
A Flutter package for simplified page-to-page navigation using a custom method (NavigatorHelper.to(pageName)).

Features:
Simple Navigation: 
Navigate between pages using a straightforward method.
Centralized Route Management:
Manage routes and configurations in one place.
Typed Navigation:
Support typed navigation for type safety.
Middleware Support: 
Intercept and modify navigation behavior with middleware functions.

Installation
Add flutter_navigator to your pubspec.yaml file:


dependencies:
  flutter_navigator: ^1.0.0 # Replace with the latest version


1. Import the package:
import 'package:flutter_navigator/flutter_navigator.dart';

3. Define Routes:
Set up your routes and their configurations. For example:
class AppRoutes {
  static const home = '/home';
  static const profile = '/profile';
  static const settings = '/settings';
}

4. Navigate Between Pages:
Use NavigatorHelper.to(pageName) to navigate between pages:
NavigatorHelper.to(AppRoutes.profile);

5. Middleware Example:
Add middleware to customize navigation behavior:
class AuthMiddleware {
  static void checkLoggedIn(Function next) {
    if (isLoggedIn) {
      next();
    } else {
      NavigatorHelper.to(AppRoutes.home);
    }
  }
}

// Usage:
NavigatorHelper.to(AppRoutes.profile, middleware: [AuthMiddleware.checkLoggedIn]);

Contributions:
Contributions are welcome! Please feel free to submit issues and pull requests.

License
This package is licensed under the MIT License. See the LICENSE file for details.

