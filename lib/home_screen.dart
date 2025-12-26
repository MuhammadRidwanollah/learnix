import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
import 'notifications_screen.dart';
import 'providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final userProvider = Provider.of<UserProvider>(context);
    
    // Data palsu untuk kursus-kursus
    final List<Map<String, String>> allCourses = [
      {
        'title': locale.flutterDevelopment,
        'instructor': 'Dr. Anderson',
      },
      {
        'title': locale.webDevelopment,
        'instructor': 'Prof. Johnson',
      },
      {
        'title': locale.uiUxDesign,
        'instructor': 'Ms. Williams',
      },
      {
        'title': locale.dataScience,
        'instructor': 'Dr. Smith',
      },
      {
        'title': locale.machineLearning,
        'instructor': 'Prof. Davis',
      },
      {
        'title': locale.advancedFlutter,
        'instructor': 'Dr. Anderson',
      },
      {
        'title': locale.webSecurity,
        'instructor': 'Prof. Johnson',
      },
      {
        'title': locale.cloudComputing,
        'instructor': 'Ms. Williams',
      },
    ];
    
    // Filter kursus berdasarkan query pencarian
    final List<Map<String, String>> filteredCourses = _searchQuery.isEmpty
        ? allCourses
        : allCourses.where((course) {
            final title = course['title']?.toLowerCase() ?? '';
            final instructor = course['instructor']?.toLowerCase() ?? '';
            final query = _searchQuery.toLowerCase();
            return title.contains(query) || instructor.contains(query);
          }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFB23A3A),
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Color(0xFFB23A3A),
              ),
              onPressed: () {
                if (context.mounted) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsScreen()));
                }
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Welcome Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Color(0xFFB23A3A),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locale.welcomeBack,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  userProvider.name ?? 'User',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: locale.searchCourses,
                      hintStyle: const TextStyle(color: Colors.white70),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Quick Stats
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard(locale.myCourses, '8', Icons.book_outlined),
                _buildStatCard(locale.learning, '3', Icons.check_circle_outline),
                _buildStatCard(locale.profile, '5', Icons.access_time),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Course List
          Expanded(
            child: filteredCourses.isEmpty && _searchQuery.isNotEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          locale.noCoursesFound,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: filteredCourses.length,
                    itemBuilder: (context, index) {
                      final course = filteredCourses[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.1),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.school,
                              color: Color(0xFFB23A3A),
                            ),
                          ),
                          title: Text(
                            (course['title'] != null) ? course['title'].toString() : 'Course',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text((course['instructor'] != null) ? course['instructor'].toString() : 'Instructor'),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFFB23A3A), size: 24),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}