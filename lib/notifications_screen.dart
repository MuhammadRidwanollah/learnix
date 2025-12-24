import 'package:flutter/material.dart';
import 'notification_detail_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(
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
                const Expanded(
                  child: Text(
                    'Notification Settings',
                    style: TextStyle(
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
                            title: 'Notification Title',
                            message: 'This is the notification message. It contains detailed information about the notification and any relevant details.',
                            type: 'Course',
                            time: '2 min ago',
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
    switch (index % 4) {
      case 0:
        return 'New Course Available';
      case 1:
        return 'Assignment Due Soon';
      case 2:
        return 'Upcoming Event';
      default:
        return 'New Notification';
    }
  }

  String _getNotificationSubtitle(int index) {
    switch (index % 4) {
      case 0:
        return 'Check out our new Flutter course';
      case 1:
        return 'Your assignment is due in 2 days';
      case 2:
        return 'Webinar on mobile development';
      default:
        return 'You have a new notification';
    }
  }

  String _getNotificationTime(int index) {
    List<String> times = [
      '2 min ago',
      '15 min ago',
      '1 hour ago',
      '3 hours ago',
      '5 hours ago',
      '1 day ago',
      '2 days ago',
      '3 days ago',
    ];
    return times[index % times.length];
  }
}