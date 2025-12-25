import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String email;
  final String? studentId;
  final String? program;
  final String? year;
  final int? completedCourses;
  final int? enrolledCourses;
  final double? gpa;

  User({
    required this.name,
    required this.email,
    this.studentId,
    this.program,
    this.year,
    this.completedCourses,
    this.enrolledCourses,
    this.gpa,
  });

  // Create a copy with updated values
  User copyWith({
    String? name,
    String? email,
    String? studentId,
    String? program,
    String? year,
    int? completedCourses,
    int? enrolledCourses,
    double? gpa,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      studentId: studentId ?? this.studentId,
      program: program ?? this.program,
      year: year ?? this.year,
      completedCourses: completedCourses ?? this.completedCourses,
      enrolledCourses: enrolledCourses ?? this.enrolledCourses,
      gpa: gpa ?? this.gpa,
    );
  }
}

class UserProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get isLoggedIn => _user != null;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }

  String? get name => _user?.name;
  String? get email => _user?.email;
  String? get studentId => _user?.studentId;
  String? get program => _user?.program;
  String? get year => _user?.year;
  int? get completedCourses => _user?.completedCourses;
  int? get enrolledCourses => _user?.enrolledCourses;
  double? get gpa => _user?.gpa;
}