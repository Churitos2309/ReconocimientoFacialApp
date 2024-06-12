import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text('Profile User'),
        ),
      ),
    );
  }
}
