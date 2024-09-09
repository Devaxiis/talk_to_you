import 'package:flutter/material.dart';
import 'package:speak_with_you/main.dart';
import 'package:speak_with_you/src/config/app_theme.dart';
import 'package:speak_with_you/src/presentation/ui/network_screen.dart';
import 'package:speak_with_you/src/presentation/ui/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      theme: ThemeMode.system == ThemeMode.light? AppTheme.darkTheme():AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      home: isConnected? const SplashScreen():const NetworkScreen(),
      // home: NetworkScreen(),
    );
  }
  
}

