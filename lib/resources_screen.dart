import 'package:flutter/material.dart';
import 'resource_detail_screen.dart';

class ResourcesScreen extends StatefulWidget {
  const ResourcesScreen({super.key});

  @override
  State<ResourcesScreen> createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<ResourcesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Resources',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Resource Categories
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryChip('All', true),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Documents', false),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Videos', false),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Links', false),
                    const SizedBox(width: 8),
                    _buildCategoryChip('Books', false),
                  ],
                ),
              ),
            ),

            // Resource List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Resources',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Color(0xFFB23A3A)),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Using Container with fixed height to prevent overflow
            Container(
              height: 400, // Fixed height to prevent overflow
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: 6,
                itemBuilder: (context, index) {
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
                        child: Icon(
                          _getResourceIcon(index),
                          color: const Color(0xFFB23A3A),
                        ),
                      ),
                      title: Text(
                        _getResourceTitle(index),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        _getResourceSubtitle(index),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ResourceDetailScreen(
                              resourceName: 'Resource ${index + 1}',
                              resourceType: 'Document',
                              courseName: 'Course ${index + 1}',
                              description: 'This is a detailed description of the resource. It contains important information that students need to know about this particular learning material.',
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
      ),
    );
  }

  IconData _getResourceIcon(int index) {
    List<IconData> icons = [
      Icons.description,
      Icons.video_library,
      Icons.link,
      Icons.menu_book,
      Icons.picture_as_pdf,
      Icons.download,
    ];
    return icons[index % icons.length];
  }

  String _getResourceTitle(int index) {
    List<String> titles = [
      'Course Syllabus.pdf',
      'Lecture Video: Introduction',
      'External Resource Link',
      'Textbook Chapter 1',
      'Assignment Guidelines.pdf',
      'Downloadable Materials',
    ];
    return titles[index % titles.length];
  }

  String _getResourceSubtitle(int index) {
    List<String> subtitles = [
      'Course Materials',
      'Video Lecture',
      'External Link',
      'Reading Material',
      'Assignment Guide',
      'Downloads',
    ];
    return subtitles[index % subtitles.length];
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return FilterChip(
      label: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey[700],
        ),
      ),
      selected: isSelected,
      selectedColor: const Color(0xFFB23A3A),
      onSelected: (bool selected) {
        // Handle category selection
      },
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: isSelected ? const Color(0xFFB23A3A) : Colors.grey,
        ),
      ),
    );
  }
}