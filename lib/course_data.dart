import 'package:flutter/material.dart';

class CourseData {
  static List<Map<String, dynamic>> getMockCourses() {
    return [
      {
        'title': 'Flutter Development',
        'instructor': 'Dr. Anderson',
        'description': 'Learn to build beautiful, responsive UIs with Flutter framework',
        'level': 'Intermediate',
        'progress': 0.6,
        'totalLessons': 20,
        'completedLessons': 12,
        'image': 'assets/images/flutter_course.jpg', // Placeholder image path
      },
      {
        'title': 'Web Development',
        'instructor': 'Prof. Johnson',
        'description': 'Master modern web development with HTML, CSS, and JavaScript',
        'level': 'Beginner',
        'progress': 0.3,
        'totalLessons': 15,
        'completedLessons': 5,
        'image': 'assets/images/web_course.jpg', // Placeholder image path
      },
      {
        'title': 'UI/UX Design',
        'instructor': 'Ms. Williams',
        'description': 'Create stunning user interfaces and experiences',
        'level': 'Intermediate',
        'progress': 0.8,
        'totalLessons': 12,
        'completedLessons': 10,
        'image': 'assets/images/ux_course.jpg', // Placeholder image path
      },
      {
        'title': 'Data Science',
        'instructor': 'Dr. Brown',
        'description': 'Analyze data and build predictive models',
        'level': 'Advanced',
        'progress': 0.4,
        'totalLessons': 18,
        'completedLessons': 7,
        'image': 'assets/images/data_course.jpg', // Placeholder image path
      },
      {
        'title': 'Machine Learning',
        'instructor': 'Prof. Davis',
        'description': 'Learn algorithms and models for intelligent systems',
        'level': 'Advanced',
        'progress': 0.2,
        'totalLessons': 22,
        'completedLessons': 4,
        'image': 'assets/images/ml_course.jpg', // Placeholder image path
      },
      {
        'title': 'Advanced Flutter',
        'instructor': 'Dr. Anderson',
        'description': 'Advanced concepts and best practices in Flutter development',
        'level': 'Advanced',
        'progress': 0.1,
        'totalLessons': 16,
        'completedLessons': 2,
        'image': 'assets/images/advanced_flutter_course.jpg', // Placeholder image path
      },
      {
        'title': 'Web Security',
        'instructor': 'Prof. Johnson',
        'description': 'Secure web applications from common vulnerabilities',
        'level': 'Intermediate',
        'progress': 0.7,
        'totalLessons': 14,
        'completedLessons': 10,
        'image': 'assets/images/web_security_course.jpg', // Placeholder image path
      },
      {
        'title': 'Cloud Computing',
        'instructor': 'Ms. Williams',
        'description': 'Deploy and manage applications in the cloud',
        'level': 'Intermediate',
        'progress': 0.5,
        'totalLessons': 10,
        'completedLessons': 5,
        'image': 'assets/images/cloud_course.jpg', // Placeholder image path
      },
    ];
  }

  static List<Map<String, dynamic>> getMockQuizzes() {
    return [
      {
        'title': 'Flutter Development',
        'course': 'Flutter Development',
        'instructor': 'Dr. Anderson',
        'image': 'assets/images/flutter_quiz.jpg', // Placeholder image path
      },
      {
        'title': 'Web Development',
        'course': 'Web Development',
        'instructor': 'Prof. Johnson',
        'image': 'assets/images/web_quiz.jpg', // Placeholder image path
      },
      {
        'title': 'UI/UX Design',
        'course': 'UI/UX Design',
        'instructor': 'Ms. Williams',
        'image': 'assets/images/ux_quiz.jpg', // Placeholder image path
      },
      {
        'title': 'Data Science',
        'course': 'Data Science',
        'instructor': 'Dr. Brown',
        'image': 'assets/images/data_quiz.jpg', // Placeholder image path
      },
      {
        'title': 'Machine Learning',
        'course': 'Machine Learning',
        'instructor': 'Prof. Davis',
        'image': 'assets/images/ml_quiz.jpg', // Placeholder image path
      },
    ];
  }
}