import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
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
    final List<Map<String, dynamic>> allCourses = [
      {
        'title': locale.flutterDevelopment,
        'progress': 0.8,
        'icon': Icons.code,
      },
      {
        'title': locale.webDevelopment,
        'progress': 0.6,
        'icon': Icons.language,
      },
      {
        'title': locale.uiUxDesign,
        'progress': 0.3,
        'icon': Icons.design_services,
      },
      {
        'title': locale.dataScience,
        'progress': 0.9,
        'icon': Icons.analytics,
      },
      {
        'title': locale.machineLearning,
        'progress': 0.4,
        'icon': Icons.psychology,
      },
      {
        'title': locale.advancedFlutter,
        'instructor': 'Dr. Anderson',
        'icon': Icons.code,
      },
      {
        'title': locale.webSecurity,
        'instructor': 'Prof. Johnson',
        'icon': Icons.security,
      },
      {
        'title': locale.cloudComputing,
        'instructor': 'Ms. Williams',
        'icon': Icons.cloud,
      },
    ];
    
    // Filter kursus berdasarkan query pencarian
    final List<Map<String, dynamic>> filteredCourses = _searchQuery.isEmpty
        ? allCourses
        : allCourses.where((course) {
            final title = course['title']?.toString().toLowerCase() ?? '';
            final instructor = course['instructor']?.toString().toLowerCase() ?? '';
            final query = _searchQuery.toLowerCase();
            return title.contains(query) || instructor.contains(query);
          }).toList();
    
    // Pisahkan kursus untuk "Continue Learning" dan "Popular Courses"
    final List<Map<String, dynamic>> continueLearningCourses = 
        filteredCourses.where((course) => course.containsKey('progress')).take(5).toList();
    
    final List<Map<String, dynamic>> popularCourses = 
        filteredCourses.where((course) => course.containsKey('instructor')).take(3).toList();

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
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section
            Container(
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
                  _buildStatCard(locale.completedCourses, '3', Icons.check_circle_outline),
                  _buildStatCard(locale.pending, '5', Icons.access_time),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Continue Learning Section
            if (continueLearningCourses.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      locale.continueLearning,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        locale.seeAll,
                        style: const TextStyle(color: Color(0xFFB23A3A)),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: List.generate(continueLearningCourses.length, (index) {
                    final course = continueLearningCourses[index];
                    String title = course['title']?.toString() ?? 'Course';
                    double progress = 0.0;
                    if (course['progress'] != null && course['progress'] is num) {
                      progress = course['progress'].toDouble();
                    }
                    return _buildCourseCard(title, progress, locale);
                  }),
                ),
              ),

              const SizedBox(height: 20),
            ],

            // Popular Courses Section
            if (popularCourses.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  locale.popularCourses,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Using ListView with shrinkWrap and NeverScrollablePhysics to avoid overflow
              // This prevents the nested scrolling issue
              SizedBox(
                height: 300, // Fixed height to prevent overflow
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: popularCourses.length,
                  itemBuilder: (context, index) {
                    final course = popularCourses[index];
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
                          child: Icon(
                            (course['icon'] != null && course['icon'] is IconData) ? course['icon'] : Icons.school,
                            color: const Color(0xFFB23A3A),
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
            
            if (filteredCourses.isEmpty && _searchQuery.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
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
                ),
              ),
            ],
            
            const SizedBox(height: 16), // Mengganti Container dengan SizedBox
          ],
        ),
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

  Widget _buildCourseCard(String title, double progress, AppLocalizations locale) {
    return Container(
      width: 280,
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
      child: Row(
        children: [
          Container(
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: const Icon(
              Icons.code,
              size: 40,
              color: Color(0xFFB23A3A),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${(progress * 100).round()}% ${locale.completed}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Color(0xFFB23A3A),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}