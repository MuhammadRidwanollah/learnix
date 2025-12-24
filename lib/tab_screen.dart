import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Learning Hub',
          style: TextStyle(
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
          tabs: const [
            Tab(text: 'Courses'),
            Tab(text: 'Assignments'),
            Tab(text: 'Grades'),
            Tab(text: 'Resources'),
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