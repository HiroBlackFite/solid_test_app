import 'package:flutter/material.dart';

///Build Extension context
extension BuildContextExtension on BuildContext {
  ///Get screen sizes
  Size get screen => MediaQuery.of(this).size;

  ///Get padding
  EdgeInsets get padding => MediaQuery.of(this).padding;

  ///Get app theme
  ThemeData get theme => Theme.of(this);

  ///Get app color scheme
  ColorScheme get colorScheme => theme.colorScheme;
}

///Theme Data Extension context
extension ThemeDataExtension on BuildContext {
  ///Get app text theme

  TextTheme get textTheme => theme.textTheme;
}
