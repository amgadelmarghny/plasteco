import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plasteco/shared/colors/colors.dart';

abstract class ThemeStyle {
  static ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.green,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleSpacing: 20,
        iconTheme: IconThemeData(size: 30),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.green[400],
      ),
      popupMenuTheme: PopupMenuThemeData(
        position: PopupMenuPosition.under,
        color: Colors.green[200],
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 19,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
        ),
        bodySmall: TextStyle(fontSize: 15),
        titleMedium: TextStyle(fontSize: 20),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: defaultColor,
        elevation: 20,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: defaultColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 20,
            color: Colors.green,
          ),
        ),
      ),
      fontFamily: 'Roboto',
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.green,
      popupMenuTheme: const PopupMenuThemeData(
        position: PopupMenuPosition.under,
        color: defaultColor,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleSpacing: 20,
        iconTheme: IconThemeData(size: 30),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.green[600],
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 19,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
        ),
        bodySmall: TextStyle(fontSize: 15),
        titleMedium: TextStyle(fontSize: 20),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defaultColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: defaultColor,
      ),
    );
  }
}
