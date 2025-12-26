import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localization/app_localizations.dart';
import 'localization/language_provider.dart';
import 'splash_screen.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'home_screen.dart';
import 'tab_screen.dart';
import 'notifications_screen.dart';
import 'profile_screen.dart';
import 'providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Learnix',
          theme: ThemeData(
            primarySwatch: Colors.red,
            fontFamily: 'Roboto',
          ),
          locale: languageProvider.selectedLocale,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('id', 'ID'),
          ],
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          initialRoute: '/splash', // Start from splash screen
          routes: {
            '/': (context) => const MyAppShell(),
            '/login': (context) => _buildClearUserPage(const LoginPage()),
            '/register': (context) => _buildClearUserPage(const RegisterPage()),
            '/splash': (context) => const SplashScreen(),
            '/notifications': (context) => const NotificationsScreen(),
          },
        );
      },
    );
  }
}

class MyAppShell extends StatefulWidget {
  const MyAppShell({super.key});

  @override
  State<MyAppShell> createState() => _MyAppShellState();
}

class _MyAppShellState extends State<MyAppShell> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const TabScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFB23A3A),
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget _buildClearUserPage(Widget page) {
  return Builder(
    builder: (context) {
      // Clear user data when navigating to login or register
      Provider.of<UserProvider>(context, listen: false).clearUser();
      return page;
    },
  );
}