import 'package:flutter/material.dart';
import 'package:go_router_app/models/user.dart';
import 'package:modular_ui/modular_ui.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  const ProfilePage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: MUIProfileCard(
          name: user.name,
          image: Image.network(user.image),
          designation: user.role,
        ),
      ),
    );
  }
}
