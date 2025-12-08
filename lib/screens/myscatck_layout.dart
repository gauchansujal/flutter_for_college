import 'package:flutter/material.dart';

class MyscatckLayout extends StatelessWidget {
  const MyscatckLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(height: 400, width: 400, color: Colors.amber),
            Image.network(
              'https://characterprofile.fandom.com/wiki/Iron_Man',
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
