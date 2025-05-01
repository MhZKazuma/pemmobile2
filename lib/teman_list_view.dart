import 'package:flutter/material.dart';

class TemanList extends StatelessWidget {
  // List daftar teman
  final List<String> friends = [
    'Yanto',
    'Ical',
    'Pras',
    'Plengeh',
    'Ucok',
    'Android',
  ];

  // Constructor tanpa const, karena friends bukan const
  TemanList({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengurutkan daftar teman dari A-Z
    List<String> sortedFriends = List.from(friends)..sort();

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Teman')),
      body: ListView.builder(
        itemCount: sortedFriends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(sortedFriends[index]),
          );
        },
      ),
    );
  }
}
