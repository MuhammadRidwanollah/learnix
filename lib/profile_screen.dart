import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
import 'localization/language_provider.dart';
import 'providers/user_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final languageProvider = Provider.of<LanguageProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);

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
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: const BoxDecoration(
              color: Color(0xFFB23A3A),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 48,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Color(0xFFB23A3A),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  userProvider.name ?? 'User',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  userProvider.email ?? 'No email',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),



          // Profile Options
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildProfileOption(
                  context,
                  Icons.person,
                  locale.viewProfile,
                  () {
                    _showProfileDetailDialog(context, userProvider, locale);
                  },
                ),
                const SizedBox(height: 12),
                _buildProfileOption(
                  context,
                  Icons.language,
                  locale.language,
                  () {
                    _showLanguageDialog(context, languageProvider);
                  },
                ),
                const SizedBox(height: 12),
                _buildProfileOption(
                  context,
                  Icons.settings,
                  locale.settings,
                  () {},
                ),
                const SizedBox(height: 12),
                _buildProfileOption(
                  context,
                  Icons.logout,
                  locale.logout,
                  () {
                    // Clear user data and navigate back to login screen
                    Provider.of<UserProvider>(context, listen: false).clearUser();
                    if (context.mounted) {
                      Navigator.of(context).pushReplacementNamed('/login');
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
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
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
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
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }

  void _showLanguageDialog(
    BuildContext context,
    LanguageProvider languageProvider,
  ) {
    String selectedLanguage = languageProvider.languageCode;

    showDialog(
      context: context,
      builder: (context) {
        final locale = AppLocalizations.of(context);
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(locale.language),
              content: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildDialogLanguageOption(
                      title: locale.englishLanguage,
                      value: 'en',
                      currentValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 8),
                    _buildDialogLanguageOption(
                      title: locale.indonesianLanguage,
                      value: 'id',
                      currentValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    // Change language
                    if (selectedLanguage == 'en') {
                      languageProvider.changeLanguage(const Locale('en', 'US'));
                    } else {
                      languageProvider.changeLanguage(const Locale('id', 'ID'));
                    }
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showProfileDetailDialog(
    BuildContext context,
    UserProvider userProvider,
    AppLocalizations locale,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(locale.personalInformation),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow(locale.name, userProvider.name ?? locale.defaultUserName),
                const SizedBox(height: 8),
                _buildInfoRow(locale.email, userProvider.email ?? locale.defaultUserEmail),
                const SizedBox(height: 8),
                _buildInfoRow(locale.phoneNumber, '+62 812-3456-7890'),
                const SizedBox(height: 8),
                _buildInfoRow(locale.address, locale.defaultUserAddress),
                const SizedBox(height: 8),
                _buildInfoRow(locale.dateOfBirth, '15 Juni 1995'),
                const SizedBox(height: 8),
                _buildInfoRow(locale.studentId, 'STU2023001'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              },
              child: Text(locale.ok),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDialogLanguageOption({
    required String title,
    required String value,
    required String currentValue,
    required Function(String?) onChanged,
  }) {
    final bool isSelected = currentValue == value;
    
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? const Color(0xFFB23A3A) : Colors.grey,
                  width: 2,
                ),
                color: isSelected ? const Color(0xFFB23A3A) : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 14,
                      color: Colors.white,
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            Text(title),
          ],
        ),
      ),
    );
  }
}
