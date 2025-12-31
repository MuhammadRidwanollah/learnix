import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'course_detail_screen.dart';
import 'course_data.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  late String _searchQuery;
  
  @override
  void initState() {
    super.initState();
    _searchQuery = '';
  }
  
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    // Data kursus dari file course_data.dart
    final List<Map<String, dynamic>> allCourses = CourseData.getMockCourses();
    
    // Ambil data untuk kursus saya dan rekomendasi
    final List<Map<String, dynamic>> myCourses = allCourses;
    final List<Map<String, dynamic>> recommendedCourses = allCourses.take(4).toList();
    
    // Filter kursus berdasarkan query pencarian
    final List<Map<String, dynamic>> filteredMyCourses = _searchQuery.isEmpty || _searchQuery.trim() == ''
        ? myCourses
        : myCourses.where((course) {
            final title = course['title']?.toString().toLowerCase() ?? '';
            final instructor = course['instructor']?.toString().toLowerCase() ?? '';
            final query = _searchQuery.toLowerCase();
            return title.contains(query) || instructor.contains(query);
          }).toList();

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
                      color: Colors.grey.withOpacity(0.1),
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
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
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
              child: filteredMyCourses.isEmpty && _searchQuery.isNotEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search_off,
                            size: 64,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            locale.noCoursesFound,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: filteredMyCourses.length,
                      itemBuilder: (context, index) {
                        final course = filteredMyCourses[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
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
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200, // Placeholder color
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  course['image'] ?? 'assets/images/default_course.jpg',
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                  errorBuilder: (context, error, stackTrace) {
                                    // Jika gambar tidak ditemukan, tampilkan placeholder
                                    return Icon(
                                      Icons.book,
                                      color: const Color(0xFFB23A3A),
                                    );
                                  },
                                ),
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
                              String courseDescription = (course['description'] != null) ? course['description'].toString() : locale.courseDescriptionPlaceholder;
                              int totalLessons = (course['totalLessons'] != null) ? course['totalLessons'] : 10;
                              int completedLessons = (course['completedLessons'] != null) ? course['completedLessons'] : 0;
                              String courseLevel = (course['level'] != null) ? course['level'].toString() : locale.courseLevelIntermediate;
                              double progress = (course['progress'] != null) ? course['progress'].toDouble() : 0.0;
                              
                              String courseImage = (course['image'] != null) ? course['image'].toString() : 'assets/images/default_course.jpg';
                              
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => CourseDetailScreen(
                                    courseTitle: courseTitle,
                                    courseInstructor: courseInstructor,
                                    courseDescription: courseDescription,
                                    progress: progress,
                                    courseLevel: courseLevel,
                                    totalLessons: totalLessons,
                                    completedLessons: completedLessons,
                                    courseImage: courseImage,
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
                  String imageUrl = (course['image'] != null) ? course['image'].toString() : 'assets/images/default_course.jpg';
                  return _buildCourseCardWithIcon(title, instructor, progress, imageUrl);
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

  Widget _buildCourseCard(String title, String instructor, double progress, String imageUrl) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
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
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.grey.shade200, // Placeholder color
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
                errorBuilder: (context, error, stackTrace) {
                  // Jika gambar tidak ditemukan, tampilkan placeholder
                  return const Icon(
                    Icons.book,
                    size: 40,
                    color: Color(0xFFB23A3A),
                  );
                },
              ),
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
                  backgroundColor: Colors.grey.shade300,
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

  Widget _buildCourseCardWithIcon(String title, String instructor, double progress, String imageUrl) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
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
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.grey.shade200, // Placeholder color
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
                errorBuilder: (context, error, stackTrace) {
                  // Jika gambar tidak ditemukan, tampilkan placeholder
                  return const Icon(
                    Icons.book,
                    size: 40,
                    color: Color(0xFFB23A3A),
                  );
                },
              ),
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
                  backgroundColor: Colors.grey.shade300,
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