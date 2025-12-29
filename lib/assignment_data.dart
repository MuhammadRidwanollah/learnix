import 'package:flutter/material.dart';

class AssignmentData {
  static List<Map<String, dynamic>> getMockAssignments() {
    return [
      // Flutter Development Assignments
      {
        'title': 'Flutter UI Design Task',
        'course': 'Flutter Development',
        'instructor': 'Dr. Anderson',
        'description': 'Create a responsive UI for a mobile application using Flutter widgets. Implement at least 5 different types of widgets and ensure the UI is responsive across different screen sizes.',
        'dueDate': '2024-01-15',
        'status': 'pending',
        'timeLimit': '3 hours',
        'type': 'Essay',
        'image': 'assets/images/flutter_assignment.jpg',
      },
      {
        'title': 'Flutter State Management',
        'course': 'Flutter Development',
        'instructor': 'Dr. Anderson',
        'description': 'Explain different state management techniques in Flutter and implement a sample application using Provider pattern. Include a detailed explanation of your approach.',
        'dueDate': '2024-01-20',
        'status': 'pending',
        'timeLimit': '4 hours',
        'type': 'Essay',
        'image': 'assets/images/flutter_assignment.jpg',
      },
      
      // Web Development Assignments
      {
        'title': 'Responsive Web Design',
        'course': 'Web Development',
        'instructor': 'Prof. Johnson',
        'description': 'Create a responsive website using HTML, CSS, and JavaScript. The website should adapt to different screen sizes and include interactive elements.',
        'dueDate': '2024-01-12',
        'status': 'pending',
        'timeLimit': '5 hours',
        'type': 'Essay',
        'image': 'assets/images/web_assignment.jpg',
      },
      {
        'title': 'JavaScript Algorithms',
        'course': 'Web Development',
        'instructor': 'Prof. Johnson',
        'description': 'Implement and explain 5 different JavaScript algorithms for sorting and searching. Include time complexity analysis for each algorithm.',
        'dueDate': '2024-01-18',
        'status': 'pending',
        'timeLimit': '4 hours',
        'type': 'Essay',
        'image': 'assets/images/web_assignment.jpg',
      },
      
      // UI/UX Design Assignments
      {
        'title': 'User Research Report',
        'course': 'UI/UX Design',
        'instructor': 'Ms. Williams',
        'description': 'Conduct user research for a mobile app and prepare a comprehensive report. Include user personas, user journey maps, and recommendations for improving user experience.',
        'dueDate': '2024-01-10',
        'status': 'pending',
        'timeLimit': '6 hours',
        'type': 'Essay',
        'image': 'assets/images/ux_assignment.jpg',
      },
      {
        'title': 'Wireframe and Prototype',
        'course': 'UI/UX Design',
        'instructor': 'Ms. Williams',
        'description': 'Create wireframes and interactive prototypes for an e-commerce mobile app. Explain your design decisions and how they improve user experience.',
        'dueDate': '2024-01-22',
        'status': 'pending',
        'timeLimit': '8 hours',
        'type': 'Essay',
        'image': 'assets/images/ux_assignment.jpg',
      },
      
      // Data Science Assignments
      {
        'title': 'Data Analysis Project',
        'course': 'Data Science',
        'instructor': 'Dr. Brown',
        'description': 'Analyze a dataset of your choice using Python. Provide insights, visualizations, and recommendations based on your analysis. Include all code and explanations.',
        'dueDate': '2024-01-14',
        'status': 'pending',
        'timeLimit': '10 hours',
        'type': 'Essay',
        'image': 'assets/images/data_assignment.jpg',
      },
      {
        'title': 'Machine Learning Model',
        'course': 'Data Science',
        'instructor': 'Dr. Brown',
        'description': 'Build a machine learning model to predict a specific outcome. Explain your approach, data preprocessing steps, model selection, and evaluation metrics.',
        'dueDate': '2024-01-25',
        'status': 'pending',
        'timeLimit': '12 hours',
        'type': 'Essay',
        'image': 'assets/images/data_assignment.jpg',
      },
      
      // Machine Learning Assignments
      {
        'title': 'Neural Network Implementation',
        'course': 'Machine Learning',
        'instructor': 'Prof. Davis',
        'description': 'Implement a simple neural network from scratch using Python. Explain the mathematics behind each step and compare your implementation with existing libraries.',
        'dueDate': '2024-01-16',
        'status': 'pending',
        'timeLimit': '8 hours',
        'type': 'Essay',
        'image': 'assets/images/ml_assignment.jpg',
      },
      {
        'title': 'Deep Learning Research',
        'course': 'Machine Learning',
        'instructor': 'Prof. Davis',
        'description': 'Research and write a comprehensive report on a recent advancement in deep learning. Include technical details, applications, and potential future developments.',
        'dueDate': '2024-01-28',
        'status': 'pending',
        'timeLimit': '15 hours',
        'type': 'Essay',
        'image': 'assets/images/ml_assignment.jpg',
      },
      
      // Advanced Flutter Assignments
      {
        'title': 'Advanced State Management',
        'course': 'Advanced Flutter',
        'instructor': 'Dr. Anderson',
        'description': 'Compare and contrast different advanced state management solutions in Flutter (Riverpod, Bloc, MobX). Implement the same feature using each approach and analyze pros and cons.',
        'dueDate': '2024-01-17',
        'status': 'pending',
        'timeLimit': '6 hours',
        'type': 'Essay',
        'image': 'assets/images/advanced_flutter_assignment.jpg',
      },
      
      // Web Security Assignments
      {
        'title': 'Security Vulnerability Assessment',
        'course': 'Web Security',
        'instructor': 'Prof. Johnson',
        'description': 'Perform a security assessment on a sample web application. Identify vulnerabilities, explain potential attacks, and provide mitigation strategies.',
        'dueDate': '2024-01-19',
        'status': 'pending',
        'timeLimit': '7 hours',
        'type': 'Essay',
        'image': 'assets/images/web_security_assignment.jpg',
      },
      
      // Cloud Computing Assignments
      {
        'title': 'Cloud Infrastructure Design',
        'course': 'Cloud Computing',
        'instructor': 'Ms. Williams',
        'description': 'Design a cloud infrastructure for a scalable web application. Include diagrams, cost analysis, and security considerations for your design.',
        'dueDate': '2024-01-21',
        'status': 'pending',
        'timeLimit': '9 hours',
        'type': 'Essay',
        'image': 'assets/images/cloud_assignment.jpg',
      },
    ];
  }
}