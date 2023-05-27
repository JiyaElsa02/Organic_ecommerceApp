import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:organic_ecommerce_app/home/main_food_page.dart';
import 'package:organic_ecommerce_app/pages/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user logged in
          if (snapshot.hasData) {
            return FoodPage();
          }

          //user not logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
