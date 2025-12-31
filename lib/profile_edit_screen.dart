import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
import 'providers/user_provider.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final _formKey = GlobalKey<FormState>();
  
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _country;
  late String _description;

  @override
  void initState() {
    super.initState();
    // Initialize with current user data after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userProvider = context.read<UserProvider>();
      setState(() {
        _firstName = userProvider.firstName ?? '';
        _lastName = userProvider.lastName ?? '';
        _email = userProvider.email ?? '';
        _country = userProvider.country ?? '';
        _description = userProvider.description ?? '';
      });
    });
  }

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
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                
                // Update profile data
                userProvider.updateProfile(
                  name: '$_firstName $_lastName'.trim(),
                  email: _email,
                  firstName: _firstName,
                  lastName: _lastName,
                  country: _country,
                  description: _description,
                );
                
                // Show success message and go back
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(locale.success),
                    backgroundColor: const Color(0xFFB23A3A),
                  ),
                );
                
                Navigator.of(context).pop();
              }
            },
            child: Text(
              locale.submit,
              style: const TextStyle(
                color: Color(0xFFB23A3A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture Section
              Center(
                child: Stack(
                  children: [
                    Container(
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
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFB23A3A),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          Icons.edit,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              
              // First Name Field
              Text(
                locale.firstName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                initialValue: _firstName,
                decoration: InputDecoration(
                  hintText: locale.firstName,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return locale.pleaseEnterYourName;
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstName = value ?? '';
                },
              ),
              const SizedBox(height: 16),
              
              // Last Name Field
              Text(
                locale.lastName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                initialValue: _lastName,
                decoration: InputDecoration(
                  hintText: locale.lastName,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return locale.pleaseEnterYourName;
                  }
                  return null;
                },
                onSaved: (value) {
                  _lastName = value ?? '';
                },
              ),
              const SizedBox(height: 16),
              
              // Email Field
              Text(
                locale.email,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                initialValue: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: locale.email,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return locale.pleaseEnterYourEmail;
                  }
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                    return locale.pleaseEnterYourEmail;
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
              const SizedBox(height: 16),
              
              // Country Field
              Text(
                locale.country,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                initialValue: _country,
                decoration: InputDecoration(
                  hintText: locale.country,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                onSaved: (value) {
                  _country = value ?? '';
                },
              ),
              const SizedBox(height: 16),
              
              // Description Field
              Text(
                locale.description,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                initialValue: _description,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: locale.description,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                onSaved: (value) {
                  _description = value ?? '';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}