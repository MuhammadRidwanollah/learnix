import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'notification_detail_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    // Data palsu untuk notifikasi
    final List<Map<String, dynamic>> notifications = [
      {
        'title': locale.newCourseAvailable,
        'subtitle': locale.checkOutNewFlutterCourse,
        'time': locale.oneMinAgo,
        'isUnread': true,
        'icon': Icons.school,
        'type': locale.course,
      },
      {
        'title': locale.assignmentDueSoon,
        'subtitle': locale.assignmentDueTomorrow,
        'time': locale.fiveMinAgo,
        'isUnread': true,
        'icon': Icons.assignment,
        'type': locale.assignment,
      },
      {
        'title': locale.upcomingEvent,
        'subtitle': locale.webinarOnMobileDevelopment,
        'time': locale.tenMinAgo,
        'isUnread': true,
        'icon': Icons.event,
        'type': locale.event,
      },
      {
        'title': locale.courseUpdate,
        'subtitle': locale.newMaterialsAdded,
        'time': locale.twentyMinAgo,
        'isUnread': false,
        'icon': Icons.book,
        'type': locale.course,
      },
      {
        'title': locale.newNotification,
        'subtitle': locale.youHaveNewNotification,
        'time': locale.thirtyMinAgo,
        'isUnread': false,
        'icon': Icons.notifications,
        'type': locale.notifications,
      },
      {
        'title': locale.assignmentDueSoon,
        'subtitle': locale.assignmentDueInTwoDays,
        'time': locale.oneHourAgo,
        'isUnread': false,
        'icon': Icons.assignment,
        'type': locale.assignment,
      },
      {
        'title': locale.newCourseAvailable,
        'subtitle': locale.checkOutNewWebDevelopmentCourse,
        'time': locale.twoHoursAgo,
        'isUnread': false,
        'icon': Icons.code,
        'type': locale.course,
      },
      {
        'title': locale.gradePosted,
        'subtitle': locale.yourGradeForAssignment,
        'time': locale.yesterday,
        'isUnread': false,
        'icon': Icons.grade,
        'type': locale.grade,
      },
    ];
    
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
      ),
      body: Column(
        children: [
          // Notification Settings
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withValues(alpha: 0.1),
                ),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.notifications_active,
                  color: Color(0xFFB23A3A),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    locale.notificationSettings,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeTrackColor: const Color(0xFFB23A3A),
                  activeThumbColor: const Color(0xFFB23A3A),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Notification List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                bool isUnread = (notification['isUnread'] != null) ? notification['isUnread'] as bool : false;
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
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
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isUnread
                            ? const Color(0xFFB23A3A).withValues(alpha: 0.1)
                            : Colors.grey.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        (notification['icon'] != null && notification['icon'] is IconData) ? notification['icon'] as IconData : Icons.notifications,
                        color: isUnread ? const Color(0xFFB23A3A) : Colors.grey,
                      ),
                    ),
                    title: Text(
                      (notification['title'] != null) ? notification['title'].toString() : locale.newNotification,
                      style: TextStyle(
                        fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    subtitle: Text(
                      (notification['subtitle'] != null) ? notification['subtitle'].toString() : locale.youHaveNewNotification,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          (notification['time'] != null) ? notification['time'].toString() : locale.justNow,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        if (isUnread)
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFFB23A3A),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NotificationDetailScreen(
                            title: (notification['title'] != null) ? notification['title'].toString() : locale.newNotification,
                            message: (notification['subtitle'] != null) ? notification['subtitle'].toString() : locale.youHaveNewNotification,
                            time: (notification['time'] != null) ? notification['time'].toString() : locale.justNow,
                            type: (notification['type'] != null) ? notification['type'].toString() : locale.notifications,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}