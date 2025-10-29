import 'package:flutter/material.dart';
import 'package:handysqaud_user_app/home_screen.dart';
import 'package:handysqaud_user_app/login_screen.dart';
import 'package:handysqaud_user_app/service_detail_screen.dart';
import 'package:handysqaud_user_app/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ZalandoSansSemiExpanded'),
      routes: {
        '/home': (context) => HomeScreen(),
        '/service-detail': (context) => ServiceDetailScreen(),
        '/login': (context) => LoginScreen(),
        '/splash': (context) => SplashScreen(),
      },
      home: SplashScreen(),
    );
  }
}
