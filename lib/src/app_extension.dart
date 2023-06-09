import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  /// The function navigates to a new page in a Flutter app using the Navigator widget.
  ///
  /// Args:
  ///   page (Widget): The parameter "page" is a Widget that represents the page to which the user wants
  /// to navigate. It could be any widget that represents a screen or a page in the app. The function
  /// "navigateToPage" takes this widget as a parameter and uses it to create a new MaterialPageRoute
  /// and push it
  void navigateToPage(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  }

  /// The function navigates back to the previous screen using the Navigator class in Dart.
  void navigateBack() {
    Navigator.of(this).pop();
  }

  /// This function navigates to a new page and replaces the current page in the navigation stack.
  ///
  /// Args:
  ///   page (Widget): The page parameter is a Widget that represents the page to which the user will be
  /// navigated. It can be any widget that extends the Flutter Widget class, such as a StatelessWidget
  /// or a StatefulWidget.
  void navigateToPageWithReplacement(Widget page) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
