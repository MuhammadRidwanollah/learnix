import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';
import 'assignment_detail_screen.dart';

class AssignmentsScreen extends StatefulWidget {
  const AssignmentsScreen({super.key});

  @override
  State<AssignmentsScreen> createState() => _AssignmentsScreenState();
}

class _AssignmentsScreenState extends State<AssignmentsScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    
    // Data palsu untuk tugas
    final List<Map<String, String>> assignments = [
      {
        'title': locale.assignmentDescription,
        'course': locale.computerScience101,
        'dueDate': locale.defaultDueDate,
        'status': 'pending',
        'description': locale.assignmentDescriptionPlaceholder,
      },
      {
        'title': locale.assignment,
        'course': locale.flutterDevelopment,
        'dueDate': '2023-12-28',
        'status': 'completed',
        'description': locale.assignmentDescription,
      },
      {
        'title': locale.assignment,
        'course': locale.webDevelopment,
        'dueDate': '2024-01-05',
        'status': 'pending',
        'description': locale.assignmentDescription,
      },
      {
        'title': locale.assignment,
        'course': locale.uiUxDesign,
        'dueDate': '2023-12-20',
        'status': 'completed',
        'description': locale.assignmentDescription,
      },
      {
        'title': locale.assignment,
        'course': locale.dataScience,
        'dueDate': '2024-01-15',
        'status': 'inProgress',
        'description': locale.assignmentDescription,
      },
    ];
    
    // Hitung jumlah tugas berdasarkan status
    int allCount = assignments.length;
    int pendingCount = assignments.where((assignment) => assignment['status'] == 'pending').length;
    int completedCount = assignments.where((assignment) => assignment['status'] == 'completed').length;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.assignments,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Assignment Categories
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryCard(locale.all, allCount, Icons.assignment),
                  _buildCategoryCard(locale.pending, pendingCount, Icons.access_time),
                  _buildCategoryCard(locale.completed, completedCount, Icons.check_circle),
                ],
              ),
            ),

            // Assignment List
            // Using Container with fixed height to prevent overflow
            SizedBox(
              height: 400, // Fixed height to prevent overflow
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: assignments.length,
                itemBuilder: (context, index) {
                  final assignment = assignments[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
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
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFB23A3A).withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.assignment,
                          color: Color(0xFFB23A3A),
                        ),
                      ),
                      title: Text(
                        assignment['title'] ?? '${locale.assignment} ${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('${locale.dueDate}: ${assignment['dueDate'] ?? locale.defaultDueDate}'),
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: assignment['status'] == 'completed' 
                              ? Colors.green.shade100 
                              : assignment['status'] == 'inProgress' 
                                  ? Colors.blue.shade100 
                                  : Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          assignment['status'] == 'completed' 
                              ? locale.completed 
                              : assignment['status'] == 'inProgress' 
                                  ? locale.inProgress 
                                  : locale.pending,
                          style: TextStyle(
                            color: assignment['status'] == 'completed' 
                                ? Colors.green[800] 
                                : assignment['status'] == 'inProgress' 
                                    ? Colors.blue[800] 
                                    : Colors.orange[800],
                            fontSize: 12,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AssignmentDetailScreen(
                              assignmentTitle: assignment['title'] ?? '${locale.assignment} ${index + 1}',
                              courseName: assignment['course'] ?? '${locale.course} ${index + 1}',
                              description: assignment['description'] ?? locale.assignmentDescription,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 16), // Mengganti Container dengan SizedBox
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, int count, IconData icon) {
    
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
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
          Icon(icon, color: const Color(0xFFB23A3A), size: 24),
          const SizedBox(height: 8),
          Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}