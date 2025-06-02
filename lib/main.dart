import 'package:ace/firebase_options.dart';
import 'package:ace/routers/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0C0F1A),
        primaryColor: const Color(0xFFF57C00),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0C0F1A),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFF57C00),
          secondary: Color(0xFF1A3C66),
          surface: Color(0xFF1A1A1A),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
        ),
        cardColor: const Color(0xFF1A1A1A),
        dividerColor: Color(0xFF2C2C2C),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white70),
          bodyMedium: TextStyle(color: Colors.white60),
          titleLarge: TextStyle(color: Colors.white),
        ),
        fontFamily: 'SpaceGrotesk',
      ),
    );
  }
}
