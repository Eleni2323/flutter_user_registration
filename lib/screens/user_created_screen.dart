import 'package:flutter/material.dart';

class UserCreatedScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;

  const UserCreatedScreen({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Welcome, $firstName $lastName!',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Your account has been created with the email address:',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            email,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.lightBlue,
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            child: const Text(
              'Back to Create User',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}