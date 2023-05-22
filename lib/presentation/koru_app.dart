import 'package:flutter/material.dart';
import 'package:koru/presentation/splash_screen.dart';

class KoruApp extends StatelessWidget {
  const KoruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koru',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green[800],
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[800],
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green[800],
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Colors.green,
          iconColor: Colors.green,
          floatingLabelStyle: TextStyle(
            color: Colors.green,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
