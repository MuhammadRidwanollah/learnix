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
      appBar: AppBar(
        title: Text(locale.notifications),
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return ListTile(
                title: Text(locale.newNotification),
                subtitle: Text(locale.newCourseAvailableDescription),
                trailing: Text(locale.oneHourAgo),
              );
            case 1:
              return ListTile(
                title: Text(locale.assignmentDueSoon),
                subtitle: Text(locale.assignmentDueSoonDescription),
                trailing: Text(locale.twoMinAgo),
              );
            case 2:
              return ListTile(
                title: Text(locale.upcomingEvent),
                subtitle: Text(locale.upcomingEventDescription),
                trailing: Text(locale.fiveMinAgo),
              );
            case 3:
              return ListTile(
                title: Text(locale.courseUpdate),
                subtitle: Text(locale.courseUpdateDescription),
                trailing: Text(locale.tenMinAgo),
              );
            case 4:
              return ListTile(
                title: Text(locale.gradePosted),
                subtitle: Text(locale.gradePostedDescription),
                trailing: Text(locale.oneMinAgo),
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}