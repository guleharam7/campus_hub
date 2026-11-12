import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 12),
          const CircleAvatar(
            radius: 42,
            child: Icon(Icons.person, size: 44),
          ),
          const SizedBox(height: 12),
          Text(
            'Student User',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Text(
            'student@example.com',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          const Card(
            child: ListTile(
              leading: Icon(Icons.school_outlined),
              title: Text('Program'),
              subtitle: Text('Computer Science'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text('Semester'),
              subtitle: Text('Semester 1'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('App information'),
              subtitle: const Text('Campus Hub lab prototype'),
              onTap: () => showAboutDialog(
                context: context,
                applicationName: 'Campus Hub',
                children: const [
                  Text('Built during a beginner Flutter lab.')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}