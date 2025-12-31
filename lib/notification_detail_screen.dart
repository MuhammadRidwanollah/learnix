import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';

class NotificationDetailScreen extends StatelessWidget {
  final String title;
  final String? message;
  final String? time;
  final String? type;

  const NotificationDetailScreen({
    super.key,
    required this.title,
    this.message,
    this.time,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.notifications,
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
            // Notification Card
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(20.0),
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
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFFB23A3A).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Color(0xFFB23A3A),
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              time ?? locale.twoHoursAgo,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    message ?? locale.notificationMessagePlaceholder,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  
                  // Notification Type
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB23A3A).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          type == 'assignment' ? Icons.assignment : 
                          type == 'grade' ? Icons.school : 
                          type == 'course' ? Icons.book : 
                          Icons.notifications,
                          color: const Color(0xFFB23A3A),
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          type?.toUpperCase() ?? 'NOTIFICATION',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFB23A3A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Course Information
                  const SizedBox(height: 16),
                  Text(
                    'Course Information',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetailRow('Course Name', 'Computer Science 101'),
                        const SizedBox(height: 8),
                        _buildDetailRow('Instructor', 'Dr. Anderson'),
                        const SizedBox(height: 8),
                        _buildDetailRow('Department', 'Computer Science'),
                        const SizedBox(height: 8),
                        _buildDetailRow('Academic Year', '2024/2025'),
                      ],
                    ),
                  ),
                  
                  // Additional Details
                  const SizedBox(height: 16),
                  Text(
                    'Additional Details',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (type == 'assignment') ...[
                          _buildDetailRow('Assignment Type', 'Project Submission'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Due Date', 'Jan 15, 2025'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Submission Status', 'Pending'),
                        ] else if (type == 'grade') ...[
                          _buildDetailRow('Grade Type', 'Midterm Exam'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Score', '85/100 (A)'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Grading Date', 'Dec 30, 2024'),
                        ] else if (type == 'course') ...[
                          _buildDetailRow('Course Type', 'New Course Available'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Course Level', 'Intermediate'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Enrollment Status', 'Available'),
                        ] else ...[
                          _buildDetailRow('Notification Category', 'General'),
                          const SizedBox(height: 8),
                          _buildDetailRow('Priority', 'Medium'),
                        ],
                      ],
                    ),
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
                  Text(
                    locale.action,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            // Mark as read
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFFB23A3A),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            locale.markAsRead,
                            style: const TextStyle(
                              color: Color(0xFFB23A3A),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Take action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB23A3A),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            locale.takeAction,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Related Notifications
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(20.0),
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
                  Text(
                    locale.relatedNotifications,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildRelatedNotificationItem(
                    locale.assignmentReminder,
                    locale.assignmentDueTomorrow,
                    locale.threeHoursAgo,
                  ),
                  _buildRelatedNotificationItem(
                    locale.courseUpdate,
                    locale.newMaterialsAdded,
                    locale.oneDayAgo,
                  ),
                  _buildRelatedNotificationItem(
                    locale.gradePosted,
                    locale.midtermGradeAvailable,
                    locale.twoDaysAgo,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRelatedNotificationItem(String title, String message, String time) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFB23A3A).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.notifications,
              color: Color(0xFFB23A3A),
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey.shade500,
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