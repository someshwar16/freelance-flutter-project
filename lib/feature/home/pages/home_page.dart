import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: GoogleFonts.robotoCondensed()),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to Home Page", style: GoogleFonts.roboto()),
            ElevatedButton(
              onPressed: () {
                _auth.signOut();
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
