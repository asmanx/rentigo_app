import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      body: Center(
        child: SizedBox(
          width: 357,
          height: double.infinity,

          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Logo Rentigo
                Image.asset(
                  'assets/images/logo_rentigo.png',
                  width: 88,
                  height: 88,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 18),

                Text(
                  'Rentigo',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF111827),
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  'YOUR RIDE, YOUR WAY.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.1,
                    color: const Color(0xFF8C8C8C),
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
