// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:rievalda_prefb/screens/user_detail.dart';
import 'package:rievalda_prefb/screens/user_input.dart';
import 'dart:html' as html;

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              html.window.open('https://github.com/ciinamon/rievalda-prefb', 'new tab');
            },
            child: const Text(
              "GitHub",
            ),
          ),
        ],
        title: const Text('User List'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserInput()),
              );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserDetail()),
              );
            },
            child: const Icon(Icons.loop),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
