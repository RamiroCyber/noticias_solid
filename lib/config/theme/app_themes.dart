import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() => const AppBarTheme(
      color: Colors.blue,
      elevation: 1,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.grey),
      titleTextStyle: TextStyle(color: Colors.grey,fontSize: 20),
    );
