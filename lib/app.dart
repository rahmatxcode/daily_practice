//import 'package:daily_practice/form_page.dart';
import 'package:daily_practice/FList.dart';
import 'package:daily_practice/dashboard.dart';
import 'package:daily_practice/form_validation.dart';
//import 'package:daily_practice/gridv.dart';
import 'package:daily_practice/home_page.dart';
import 'package:daily_practice/own_widget.dart';
import 'package:daily_practice/stackW.dart';
import 'package:daily_practice/stackWAdv.dart';
import 'package:daily_practice/theme_test.dart';
import 'package:daily_practice/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // this is used to set the light theme of the app. it is a static property of the AppTheme class that contains the light theme of the app. it is passed as a parameter to the MaterialApp constructor.
      darkTheme: AppTheme.darkTheme, // this is used to set the dark theme of
      // theme: ThemeData(
      //   //brightness: Brightness.light, // this is used to change the brightness of the app. it is used to set the color scheme of the app. it is passed as a parameter to the ThemeData constructor.
      //   primaryColor: Colors.blue, // this is used to change the primary color of the app which is used in the app bar and other widgets that use the primary color, primaryColor is a Color which is used to set the color of the app bar and other widgets that use the primary color. it is passed as a parameter to the ThemeData constructor.
      //   primarySwatch: Colors.blue, // this is used to change the primary swatch of the app which is used in the app bar and other widgets that use the primary swatch color, primarySwatch is a MaterialColor which is a map of colors that are used in the app. it is used to set the color of the app bar and other widgets that use the primary swatch color. it is passed as a parameter to the ThemeData constructor.
      //   //scaffoldBackgroundColor: Colors.grey[200], // this is used to change the background color of the scaffold
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.blue, // this is used to change the background color of the button
      //       foregroundColor: Colors.white, // this is used to change the text color of the button
      //       shape: RoundedRectangleBorder( // this is used to change the shape of the button
      //         borderRadius: BorderRadius.circular(8), // this is used to make the button circular
      //       ),
      //     ),
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8), // this is used to make the text field circular
      //     ),
      //     focusedBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8), // this is used to make the text field circular when it is focused
      //       borderSide: BorderSide(color: Colors.blue), // this is used to change the color of the border when it is focused
      //     ),
      //     hintStyle: TextStyle(
      //       color: Colors.grey, // this is used to change the color of the hint text
      //     ),
      //   ),
      //   textTheme: TextTheme(
      //     headlineLarge: TextStyle(
      //       //color: Colors.black, // this is used to change the color of the headline text
      //       fontSize: 100, // this is used to change the font size of the headline text
      //       fontWeight: FontWeight.bold, // this is used to change the font weight of the headline text
      //     ),
      //   ),
      // ),// this is used to set the theme of the app. ThemeData is a class that contains all the properties of the theme. it is used to set the colors, fonts, and other properties of the theme. it is passed as a parameter to the MaterialApp constructor.
      // darkTheme: ThemeData.dark().copyWith(
      //   primaryColor: Colors.teal, // this is used to change the primary color of the dark theme
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.teal, // this is used to change the background color of the button
      //       foregroundColor: Colors.white, // this is used to change the text color of the button
      //       shape: RoundedRectangleBorder( // this is used to change the shape of the button
      //         borderRadius: BorderRadius.circular(8), // this is used to make the button circular
      //       ),
      //     ),
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8), // this is used to make the text field circular
      //     ),
      //     focusedBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8), // this is used to make the text field circular when it is focused
      //       borderSide: BorderSide(color: Colors.teal), // this is used to change the color of the border when it is focused
      //     ),
      //     hintStyle: TextStyle(
      //       color: Colors.grey, // this is used to change the color of the hint text
      //     ),
      //   ),
      //   textTheme: TextTheme(
      //     headlineLarge: TextStyle(
      //       //color: Colors.black, // this is used to change the color of the headline text
      //       fontSize: 100, // this is used to change the font size of the headline text
      //       fontWeight: FontWeight.bold, // this is used to change the font weight of the headline text
      //     ),
      //   ),
      // ),// this is used to set the dark theme of the app. ThemeData.dark() is a predefined dark theme that contains all the properties of the dark theme. it is used to set the colors, fonts, and other properties of the dark theme. it is passed as a parameter to the MaterialApp constructor.
      themeMode: ThemeMode.light, // this is used to set the theme mode of the app. ThemeMode is an enum that contains three values: light, dark, and system. it is used to set the theme mode of the app. it is passed as a parameter to the MaterialApp constructor.
      //home: ThemeTest(),
      initialRoute: '/ownwidget', // this is used to set the initial route of the app. it is a string that contains the name of the route. it is passed as a parameter to the MaterialApp constructor.
      routes: { // this is used to set the routes of the app. it is a map that contains the route name as the key and the widget as the value. it is passed as a parameter to the MaterialApp constructor.
        // '/form': (context) => FormPage(),
        '/validation': (context) => FormValidation(),
        //'/grid': (context) => GridV(),
        '/theme': (context) => ThemeTest(),
        '/home': (context) => HomePage(),
        '/dashboard': (context) => Dashboard(),
        '/list': (context) => Flist(),
        '/stackw': (context) => StackW(),
        '/stackwadv': (context) => Stackwadv(),
        '/ownwidget': (context) => OwnWidget(),
      }
    );
  }
}