import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
import 'providers/user_provider.dart';
import 'profile_edit_screen.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          locale.viewProfile,
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
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const ProfileEditScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture Section
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFB23A3A).withOpacity(0.1),
                  border: Border.all(
                    color: const Color(0xFFB23A3A),
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Color(0xFFB23A3A),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            // Full Name
            Text(
              locale.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                userProvider.firstName != null && userProvider.lastName != null
                    ? '${userProvider.firstName} ${userProvider.lastName}'
                    : userProvider.name ?? 'N/A',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Email
            Text(
              locale.email,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                userProvider.email ?? 'N/A',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Country
            Text(
              locale.country,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                userProvider.country ?? 'N/A',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Email
            Text(
              locale.email,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                userProvider.email ?? 'N/A',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Study Program
            Text(
              'Program Studi',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                'Teknik Informatika', // Mock data for study program
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Faculty
            Text(
              'Fakultas',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                'Fakultas Ilmu Komputer', // Mock data for faculty
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Login Activity
            Text(
              'Aktivitas Login',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pertama Kali Login: 15 Januari 2024', // Mock data
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Akses Terakhir: 30 Desember 2024', // Mock data
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Description
            Text(
              locale.description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              child: Text(
                userProvider.description ?? 'N/A',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}