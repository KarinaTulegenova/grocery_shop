import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // no appbar

      //body
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0, right: 80.0, bottom: 35.0, top: 120.0),
            child: Image.asset('lib/images/logo.png')
          ),

          //heading
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver the products at your home",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              ),
            ),

          const SizedBox(height: 24),

          //text
          Text(
            "Fresh products everyday",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[600],
            ),
          ),

          const Spacer(),

          //button
          GestureDetector(
            onTap: () => context.go('/home'),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
