import 'package:flutter/material.dart';
import 'grade_detail_screen.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({super.key});

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Grades',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Overall Grade Summary
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(20.0),
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
                  const Text(
                    'Overall Grade',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'A+',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB23A3A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '4.0 / 4.0',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // Course Grades
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Course Grades',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(color: Color(0xFFB23A3A)),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Using SizedBox with fixed height to prevent overflow
            SizedBox(
              height: 350, // Fixed height to prevent overflow
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
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
                        'Course ${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text('Instructor Name'),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            _getGrade(index),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: _getGradeColor(index),
                            ),
                          ),
                          Text(
                            '${_getPercentage(index)}%',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => GradeDetailScreen(
                              courseName: 'Course ${index + 1}',
                              grade: 'A+',
                              percentage: 98.5,
                              letterGrade: 'A+',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 16), // Mengganti Container dengan SizedBox
          ],
        ),
      ),
    );
  }

  String _getGrade(int index) {
    List<String> grades = ['A+', 'A', 'B+', 'A-'];
    return grades[index % grades.length];
  }

  Color _getGradeColor(int index) {
    List<Color> colors = [
      const Color(0xFF2E7D32), // Green for A+
      const Color(0xFF388E3C), // Green for A
      const Color(0xFF689F38), // Light green for B+
      const Color(0xFF303F9F), // Blue for A-
    ];
    return colors[index % colors.length];
  }

  int _getPercentage(int index) {
    List<int> percentages = [98, 92, 87, 94];
    return percentages[index % percentages.length];
  }
}