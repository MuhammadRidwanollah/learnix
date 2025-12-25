import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
import 'providers/user_provider.dart';

class ProfileDetailScreen extends StatelessWidget {
  final String? name;
  final String? email;
  final String? studentId;
  final String? program;
  final String? year;
  final int? completedCourses;
  final int? enrolledCourses;
  final double? gpa;

  const ProfileDetailScreen({
    super.key,
    this.name,
    this.email,
    this.studentId,
    this.program,
    this.year,
    this.completedCourses,
    this.enrolledCourses,
    this.gpa,
  });

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final userProvider = Provider.of<UserProvider>(context);
    
    // Use passed values or fallback to provider values
    String displayName = name ?? userProvider.name ?? 'User';
    String displayEmail = email ?? userProvider.email ?? locale.emailPlaceholder;
    String displayStudentId = studentId ?? userProvider.studentId ?? locale.studentIdPlaceholder;
    String displayProgram = program ?? userProvider.program ?? locale.computerScience;
    String displayYear = year ?? userProvider.year ?? locale.year3;
    int displayCompletedCourses = completedCourses ?? userProvider.completedCourses ?? 0;
    int displayEnrolledCourses = enrolledCourses ?? userProvider.enrolledCourses ?? 0;
    double displayGpa = gpa ?? userProvider.gpa ?? 0.0;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.profile,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
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
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: const Color(0xFFB23A3A).withValues(alpha: 0.1),
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Color(0xFFB23A3A),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    displayName,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    displayEmail,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            // Academic Stats
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locale.academicStats,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildStatItem(
                          Icons.check_circle,
                          displayCompletedCourses.toString(),
                          locale.completedCourses,
                        ),
                      ),
                      Expanded(
                        child: _buildStatItem(
                          Icons.school,
                          displayEnrolledCourses.toString(),
                          locale.enrolledCourses,
                        ),
                      ),
                      Expanded(
                        child: _buildStatItem(
                          Icons.star,
                          displayGpa.toStringAsFixed(1),
                          locale.gpa,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildProfileInfoItem(
                    Icons.badge,
                    locale.personalInfo,
                    displayStudentId,
                  ),
                  const SizedBox(height: 12),
                  _buildProfileInfoItem(
                    Icons.work,
                    locale.academicInfo,
                    displayProgram,
                  ),
                  const SizedBox(height: 12),
                  _buildProfileInfoItem(
                    Icons.calendar_today,
                    locale.academicYear,
                    displayYear,
                  ),
                ],
              ),
            ),

            // Action Buttons
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locale.action,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildActionItem(
                    Icons.language,
                    locale.changeLanguage,
                    () {
                      // Change language action
                    },
                  ),
                  const SizedBox(height: 12),
                  _buildActionItem(
                    Icons.settings,
                    locale.settings,
                    () {
                      // Settings action
                    },
                  ),
                  const SizedBox(height: 12),
                  _buildActionItem(
                    Icons.logout,
                    locale.logout,
                    () {
                      // Logout action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            icon,
            color: const Color(0xFFB23A3A),
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildProfileInfoItem(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFB23A3A),
          size: 20,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionItem(IconData icon, String label, VoidCallback onTap) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: const Color(0xFFB23A3A),
        ),
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }
}