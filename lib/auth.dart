import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_demo/services/auth.dart';
import 'package:todo_demo/view/SignIn.dart';
import 'package:todo_demo/view/home.dart';

class AuthCont extends StatelessWidget {
  const AuthCont({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User? user = snapshot.data;
          if (user == null) {
            return const AuthSignIn();
          } else {
            return const HomePage();
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
