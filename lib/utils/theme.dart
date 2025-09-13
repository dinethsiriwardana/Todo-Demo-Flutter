import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF6366F1),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  primaryColor: const Color(0xFF6366F1),
  scaffoldBackgroundColor: const Color(0xFF0F0F23),
  cardColor: const Color(0xFF1A1A2E).withOpacity(0.3),

  // Futuristic AppBar with glass effect
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF16213E).withOpacity(0.8),
    foregroundColor: Colors.white,
    elevation: 0,
    shadowColor: const Color(0xFF6366F1).withOpacity(0.3),
    surfaceTintColor: Colors.transparent,
  ),

  // Glassy elevated buttons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF6366F1).withOpacity(0.2),
      foregroundColor: Colors.white,
      side: BorderSide(
        color: const Color(0xFF6366F1).withOpacity(0.5),
        width: 1,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
      elevation: 0,
      shadowColor: const Color(0xFF6366F1).withOpacity(0.3),
    ),
  ),

  // Glassy input fields
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white.withAlpha(20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: const Color(0xFF6366F1).withOpacity(0.3),
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: const Color(0xFF6366F1).withOpacity(0.3),
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Color(0xFF6366F1), width: 2),
    ),
    labelStyle: const TextStyle(color: Colors.white70),
    hintStyle: const TextStyle(color: Colors.white38),
  ),

  // Futuristic text theme
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: 24,
      letterSpacing: 1.2,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w600,
      color: Color(0xFF6366F1),
      fontSize: 28,
      letterSpacing: 1.5,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.white70,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.white60,
      fontWeight: FontWeight.w300,
    ),
  ),

  // Card theme for glassy containers
  cardTheme: CardThemeData(
    color: const Color(0xFF1A1A2E).withOpacity(0.4),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: const Color(0xFF6366F1).withOpacity(0.2),
        width: 1,
      ),
    ),
    shadowColor: const Color(0xFF6366F1).withOpacity(0.2),
  ),

  // FloatingActionButton theme
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: const Color(0xFF6366F1).withOpacity(0.8),
    foregroundColor: Colors.white,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(
        color: const Color(0xFF6366F1).withOpacity(0.5),
        width: 1,
      ),
    ),
  ),

  // List tile theme
  listTileTheme: ListTileThemeData(
    tileColor: const Color(0xFF1A1A2E).withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(
        color: const Color(0xFF6366F1).withOpacity(0.2),
        width: 1,
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
);
