import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
            color: _selectedIndex == 0 ? const Color(0xFFB23A3A) : Colors.grey,
          ),
          label: locale.home,
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _selectedIndex == 1 ? Icons.book : Icons.book_outlined,
            color: _selectedIndex == 1 ? const Color(0xFFB23A3A) : Colors.grey,
          ),
          label: locale.learning,
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _selectedIndex == 2 ? Icons.notifications : Icons.notifications_outlined,
            color: _selectedIndex == 2 ? const Color(0xFFB23A3A) : Colors.grey,
          ),
          label: locale.notifications,
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _selectedIndex == 3 ? Icons.person : Icons.person_outlined,
            color: _selectedIndex == 3 ? const Color(0xFFB23A3A) : Colors.grey,
          ),
          label: locale.profile,
          backgroundColor: Colors.white,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFFB23A3A),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}