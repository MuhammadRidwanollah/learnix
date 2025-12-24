import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'courses_screen.dart';
import 'assignments_screen.dart';
import 'grades_screen.dart';
import 'resources_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.learning,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        bottom: TabBar(
          controller: _tabController,
          labelColor: const Color(0xFFB23A3A),
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color(0xFFB23A3A),
          tabs: [
            Tab(text: locale.myCourses),
            Tab(text: locale.assignments),
            Tab(text: locale.grades),
            Tab(text: locale.resources),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CoursesScreen(),
          AssignmentsScreen(),
          GradesScreen(),
          ResourcesScreen(),
        ],
      ),
    );
  }
}