import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'grade_detail_screen.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({super.key});

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    // Data palsu untuk nilai
    final List<Map<String, String>> gradesData = [
      {
        'course': locale.flutterDevelopment,
        'instructor': 'Dr. Anderson',
        'letterGrade': locale.aPlus,
        'percentage': '98.5',
        'gradePoint': '4.0',
      },
      {
        'course': locale.webDevelopment,
        'instructor': 'Prof. Johnson',
        'letterGrade': locale.a,
        'percentage': '92.0',
        'gradePoint': '3.7',
      },
      {
        'course': locale.uiUxDesign,
        'instructor': 'Ms. Williams',
        'letterGrade': locale.aMinus,
        'percentage': '88.5',
        'gradePoint': '3.3',
      },
      {
        'course': locale.dataScience,
        'instructor': 'Dr. Smith',
        'letterGrade': locale.a,
        'percentage': '94.0',
        'gradePoint': '3.7',
      },
    ];
    
    // Menghitung overall grade
    double totalGradePoint = 0;
    for (var grade in gradesData) {
      totalGradePoint += double.tryParse(grade['gradePoint'] ?? '0.0') ?? 0.0;
    }
    double overallGPA = totalGradePoint / gradesData.length;
    String overallLetterGrade = _getOverallLetterGrade(overallGPA);
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.grades,
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
                  Text(
                    locale.overallGrade,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    overallLetterGrade,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFB23A3A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${overallGPA.toStringAsFixed(1)} / 4.0',
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
                  Text(
                    locale.courseGrades,
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
              height: 350, // Fixed height to prevent overflow
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: gradesData.length,
                itemBuilder: (context, index) {
                  final grade = gradesData[index];
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
                        grade['course'] ?? '${locale.course} ${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(grade['instructor'] ?? locale.instructorName),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            grade['letterGrade'] ?? _getLetterGrade(index),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: _getGradeColorForLetter(grade['letterGrade'] ?? _getLetterGrade(index)),
                            ),
                          ),
                          Text(
                            '${grade['percentage']}%',
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
                              courseName: grade['course'] ?? '${locale.course} ${index + 1}',
                              grade: grade['percentage'] ?? '98.5',
                              letterGrade: grade['letterGrade'] ?? 'A+',
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

  String _getLetterGrade(int index) {
    final locale = AppLocalizations.of(context);
    List<String> grades = [locale.aPlus, locale.a, locale.bPlus, locale.aMinus];
    return grades[index % grades.length];
  }

  Color _getGradeColorForLetter(String letterGrade) {
    final locale = AppLocalizations.of(context);
    
    if (letterGrade == locale.aPlus || letterGrade == 'A+') {
      return const Color(0xFF2E7D32); // Green for A+
    } else if (letterGrade == locale.a || letterGrade == 'A') {
      return const Color(0xFF388E3C); // Green for A
    } else if (letterGrade == locale.bPlus || letterGrade == 'B+') {
      return const Color(0xFF689F38); // Light green for B+
    } else if (letterGrade == locale.aMinus || letterGrade == 'A-') {
      return const Color(0xFF303F9F); // Blue for A-
    } else {
      return const Color(0xFF2E7D32); // Default to green
    }
  }

  String _getOverallLetterGrade(double gpa) {
    final locale = AppLocalizations.of(context);
    
    if (gpa >= 3.7) {
      return locale.a;
    } else if (gpa >= 3.3) {
      return locale.aMinus;
    } else if (gpa >= 3.0) {
      return locale.bPlus;
    } else if (gpa >= 2.7) {
      return locale.b;
    } else if (gpa >= 2.3) {
      return locale.bMinus;
    } else if (gpa >= 2.0) {
      return locale.cPlus;
    } else if (gpa >= 1.7) {
      return locale.c;
    } else if (gpa >= 1.3) {
      return locale.cMinus;
    } else if (gpa >= 1.0) {
      return locale.d;
    } else {
      return locale.f;
    }
  }
}