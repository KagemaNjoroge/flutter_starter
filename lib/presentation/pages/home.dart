import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            IconButton(
              onPressed: () {
                context.go('/settings');
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
