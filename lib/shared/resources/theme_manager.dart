import 'package:flutter/services.dart';
import 'package:news/shared/resources/color_manager.dart';
import 'package:news/shared/resources/font_manager.dart';
import 'package:news/shared/resources/styles_manager.dart';
import 'package:news/shared/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  // main colors
  primarySwatch: Colors.deepOrange,
  primaryColor: ColorManager.primary,
  primaryColorLight: ColorManager.lightPrimary,
  primaryColorDark: ColorManager.darkPrimary,

  disabledColor: ColorManager.grey1,
  splashColor: ColorManager.lightPrimary,
  // ripple effect color
  // cardview theme
  cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4),
  // app bar theme
  appBarTheme: AppBarTheme(
    centerTitle: true,
    color: ColorManager.primary,
    elevation: AppSize.s4,
    shadowColor: ColorManager.lightPrimary,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManager.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: getRegularStyle(
      fontSize: FontSize.s16,
      color: ColorManager.white,
    ),
    iconTheme: IconThemeData(color: ColorManager.white),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorManager.primary,
  ),
//bottom Navigation Bar Theme
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.grey),
  // button theme
  buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary),

  // elevated button them
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s17),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12)))),

  textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.darkGrey, fontSize: FontSize.s14),
      titleMedium:
          getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      titleSmall:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      bodyLarge: getRegularStyle(color: ColorManager.grey1),
      bodySmall: getRegularStyle(color: ColorManager.grey),
      labelSmall:
          getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s12),
      bodyMedium:
          getRegularStyle(color: ColorManager.grey2, fontSize: FontSize.s12)),

  // input decoration theme (text form field)
  inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManager.error),

      // enabled border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

      // focused border style
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

      // error border style
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
  // label style
);

ThemeData darkMode = ThemeData(
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: ColorManager.darkGrey,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManager.darkGrey,
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: ColorManager.darkGrey,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: ColorManager.darkGrey,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);
