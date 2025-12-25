import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'course_detail_screen.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    // Data palsu untuk kursus-kursus
    final List<Map<String, dynamic>> myCourses = [
      {
        'title': locale.flutterDevelopment,
        'instructor': 'Dr. Anderson',
        'icon': Icons.code,
      },
      {
        'title': locale.webDevelopment,
        'instructor': 'Prof. Johnson',
        'icon': Icons.language,
      },
      {
        'title': locale.uiUxDesign,
        'instructor': 'Ms. Williams',
        'icon': Icons.design_services,
      },
      {
        'title': locale.dataScience,
        'instructor': 'Dr. Brown',
        'icon': Icons.analytics,
      },
      {
        'title': locale.machineLearning,
        'instructor': 'Prof. Davis',
        'icon': Icons.psychology,
      },
      {
        'title': locale.advancedFlutter,
        'instructor': 'Dr. Miller',
        'icon': Icons.code,
      },
      {
        'title': locale.webSecurity,
        'instructor': 'Prof. Wilson',
        'icon': Icons.security,
      },
      {
        'title': locale.cloudComputing,
        'instructor': 'Dr. Taylor',
        'icon': Icons.cloud,
      },
    ];
    
    final List<Map<String, dynamic>> recommendedCourses = [
      {
        'title': locale.uiUxDesign,
        'instructor': 'Ms. Williams',
        'progress': 0.2,
        'icon': Icons.design_services,
      },
      {
        'title': locale.dataScience,
        'instructor': 'Dr. Brown',
        'progress': 0.5,
        'icon': Icons.analytics,
      },
      {
        'title': locale.cloudComputing,
        'instructor': 'Dr. Taylor',
        'progress': 0.1,
        'icon': Icons.cloud,
      },
      {
        'title': locale.machineLearning,
        'instructor': 'Prof. Davis',
        'progress': 0.7,
        'icon': Icons.psychology,
      },
    ];
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.myCourses,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: locale.searchCourses,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFB23A3A),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
            ),

            // Categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryChip(locale.all, true),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Web Dev', false),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Mobile', false),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Data Science', false),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Design', false),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // My Courses Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    locale.myCourses,
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

            // Using SizedBox with fixed height to prevent overflow
            SizedBox(
              height: 300, // Fixed height to prevent overflow
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: myCourses.length,
                itemBuilder: (context, index) {
                  final course = myCourses[index];
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
                      onTap: () {
                        String courseTitle = (course['title'] != null) ? course['title'].toString() : 'Course';
                        String courseInstructor = (course['instructor'] != null) ? course['instructor'].toString() : 'Instructor';
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CourseDetailScreen(
                              courseTitle: courseTitle,
                              courseInstructor: courseInstructor,
                              courseDescription: locale.courseDescriptionPlaceholder,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Recommended Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    locale.recommendedForYou,
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
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: List.generate(recommendedCourses.length, (index) {
                  final course = recommendedCourses[index];
                  String title = (course['title'] != null) ? course['title'].toString() : 'Course';
                  String instructor = (course['instructor'] != null) ? course['instructor'].toString() : 'Instructor';
                  double progress = 0.0;
                  if (course['progress'] != null && course['progress'] is num) {
                    progress = course['progress'].toDouble();
                  }
                  IconData icon = (course['icon'] != null && course['icon'] is IconData) ? course['icon'] : Icons.school;
                  return _buildCourseCardWithIcon(title, instructor, progress, icon);
                }),
              ),
            ),
            
            const SizedBox(height: 16), // Mengganti Container dengan SizedBox
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFB23A3A) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFB23A3A),
          width: isSelected ? 0 : 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFFB23A3A),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildCourseCard(String title, String instructor, double progress) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Icon(
              Icons.school, // Default icon
              size: 40,
              color: Color(0xFFB23A3A),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  instructor,
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
        ],
      ),
    );
  }

  Widget _buildCourseCardWithIcon(String title, String instructor, double progress, IconData icon) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Icon(
              icon,
              size: 40,
              color: const Color(0xFFB23A3A),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  instructor,
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
        ],
      ),
    );
  }
}