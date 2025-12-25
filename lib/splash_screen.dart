import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'login_page.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // Check if user is logged in (in a real app, you'd check actual auth state)
      bool isLoggedIn = _checkLoginStatus(); // Fungsi untuk mengecek status login
      
      // Using mounted to avoid the async context warning
      if (mounted) {
        if (isLoggedIn) {
          // Navigate to main app if logged in
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyAppShell()),
          );
        } else {
          // Navigate to login page if not logged in
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }
      }
    });
  }

  bool _checkLoginStatus() {
    // In a real app, you would check actual auth state here
    // For now, returning false to show login page
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    return Scaffold(
      backgroundColor: const Color(0xFFB23A3A),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                locale.title,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                locale.learningManagementSystem,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}