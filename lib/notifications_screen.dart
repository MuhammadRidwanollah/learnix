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
              itemCount: 8,
              itemBuilder: (context, index) {
                bool isUnread = index < 3; // First 3 notifications are unread
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
                        _getNotificationIcon(index),
                        color: isUnread ? const Color(0xFFB23A3A) : Colors.grey,
                      ),
                    ),
                    title: Text(
                      _getNotificationTitle(index),
                      style: TextStyle(
                        fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    subtitle: Text(
                      _getNotificationSubtitle(index),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          _getNotificationTime(index),
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
                            title: locale.notificationTitle,
                            message: locale.notificationMessage,
                            type: locale.course,
                            time: locale.twoMinAgo,
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

  IconData _getNotificationIcon(int index) {
    final locale = AppLocalizations.of(context);
    switch (index % 4) {
      case 0:
        return Icons.school;
      case 1:
        return Icons.assignment;
      case 2:
        return Icons.event;
      default:
        return Icons.notifications;
    }
  }

  String _getNotificationTitle(int index) {
    final locale = AppLocalizations.of(context);
    switch (index % 4) {
      case 0:
        return locale.newCourseAvailable;
      case 1:
        return locale.assignmentDueSoon;
      case 2:
        return locale.upcomingEvent;
      default:
        return locale.newNotification;
    }
  }

  String _getNotificationSubtitle(int index) {
    final locale = AppLocalizations.of(context);
    switch (index % 4) {
      case 0:
        return locale.checkOutNewFlutterCourse;
      case 1:
        return locale.assignmentDueInTwoDays;
      case 2:
        return locale.webinarOnMobileDevelopment;
      default:
        return locale.youHaveNewNotification;
    }
  }

  String _getNotificationTime(int index) {
    final locale = AppLocalizations.of(context);
    List<String> times = [
      locale.oneMinAgo,
      locale.twoMinAgo,
      locale.fiveMinAgo,
      locale.tenMinAgo,
      locale.fifteenMinAgo,
      locale.twentyMinAgo,
      locale.thirtyMinAgo,
      locale.oneHourAgo,
    ];
    return times[index % times.length];
  }
}