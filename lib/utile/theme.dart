import 'package:flutter/material.dart';
import 'package:news_app/utile/colors.dart';
import 'package:news_app/utile/strings.dart';


class ThemeApp {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: ColorsApp.white,
    brightness: Brightness.light,
    fontFamily: StringsApp.appFamilyFont,
    textTheme: const TextTheme(
        bodyLarge:
            TextStyle(color: ColorsApp.white, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: ColorsApp.white, fontSize: 12)),
    appBarTheme: const AppBarTheme(
      toolbarHeight: 50,
      foregroundColor: ColorsApp.black,
      backgroundColor: ColorsApp.white,
      elevation: 5,
      shadowColor: ColorsApp.black,
      iconTheme: IconThemeData(color: ColorsApp.black),
      titleTextStyle: TextStyle(
        color: ColorsApp.black,
        fontFamily: StringsApp.appFamilyFont,
        fontSize: 20,
      ),
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: ColorsApp.black),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    drawerTheme: const DrawerThemeData(backgroundColor: ColorsApp.black),
    scaffoldBackgroundColor: ColorsApp.black.withOpacity(.5),
    useMaterial3: false,
    brightness: Brightness.dark,
    fontFamily: StringsApp.appFamilyFont,
    textTheme: const TextTheme(
        bodyLarge:
            TextStyle(color: ColorsApp.white, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: ColorsApp.black, fontSize: 12)),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsApp.black,
      toolbarHeight: 50,
      elevation: 5,
      shadowColor: ColorsApp.black,
      iconTheme: IconThemeData(color: ColorsApp.white),
      titleTextStyle: TextStyle(
        color: ColorsApp.white,
        fontFamily: StringsApp.appFamilyFont,
        fontSize: 20,
      ),
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: ColorsApp.white),
    ),
  );
}
