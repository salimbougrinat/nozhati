import 'package:flutter/material.dart';
import 'package:nozhati/screen/authentication/accounttype_screen.dart';
import 'package:nozhati/screen/authentication/signin_screen.dart';
import 'package:nozhati/screen/authentication/signup_screen.dart';
import 'package:nozhati/screen/home/home_screen.dart';
import 'package:nozhati/screen/map/map_screen.dart';
import 'package:nozhati/screen/profile/profile_screen.dart';
import 'package:nozhati/screen/profile/profileedit_screen.dart';
import 'package:nozhati/screen/search/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SignupScreen()),
      routes: {
        'signup_screen': (context) => const SignupScreen(),
        'signin_screen': (context) => const SigninScreen(),
        'home_screen': (context) => const HomeScreen(),
        'search_screen': (context) => const SearchScreen(),
        'map_screen': (context) => const MapScreen(),
        'profile_screen': (context) => const ProfileScreen(),
        'profileedit_screen': (context) => const ProfileEditScreen(),
        'accounttype_screen': (context) => const AccountTypeScreen(),
      },
    );
  }
}
