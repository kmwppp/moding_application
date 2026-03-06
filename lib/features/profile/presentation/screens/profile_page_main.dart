import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePageMain extends StatelessWidget {
  const ProfilePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.push('/login');
        },
        child: Text("로그인하러 가기 >"),
      ),
    );
  }
}
