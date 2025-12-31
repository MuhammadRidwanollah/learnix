import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String email;
  final String? firstName;
  final String? lastName;
  final String? country;
  final String? description;
  final String? studentId;
  final String? program;
  final String? year;
  final int? completedCourses;
  final int? enrolledCourses;
  final double? gpa;

  User({
    required this.name,
    required this.email,
    this.firstName,
    this.lastName,
    this.country,
    this.description,
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
    String? firstName,
    String? lastName,
    String? country,
    String? description,
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
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      country: country ?? this.country,
      description: description ?? this.description,
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
  String? get firstName => _user?.firstName;
  String? get lastName => _user?.lastName;
  String? get country => _user?.country;
  String? get description => _user?.description;
  String? get studentId => _user?.studentId;
  String? get program => _user?.program;
  String? get year => _user?.year;
  int? get completedCourses => _user?.completedCourses;
  int? get enrolledCourses => _user?.enrolledCourses;
  double? get gpa => _user?.gpa;

  void updateProfile({
    String? name,
    String? email,
    String? firstName,
    String? lastName,
    String? country,
    String? description,
  }) {
    if (_user != null) {
      _user = _user!.copyWith(
        name: name,
        email: email,
        firstName: firstName,
        lastName: lastName,
        country: country,
        description: description,
      );
      notifyListeners();
    }
  }
}