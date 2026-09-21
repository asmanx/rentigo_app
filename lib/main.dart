import 'package:flutter/material.dart';
import 'package:rentigo_app/screens/spesifikasi_motor.dart';

import 'screens/beranda.dart';
import 'screens/login.dart';
import 'screens/riwayat.dart';
import 'screens/pembayaran.dart';
import 'screens/form_pemesanan.dart';
import 'screens/splash_screen.dart';
import 'screens/spesifikasi_motor.dart';
import 'screens/spesifikasi_mobil.dart';
import 'screens/mobil_page.dart';
import 'screens/motor_page.dart';
import 'screens/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      // Halaman pertama yang dibuka
      initialRoute: '/Splash_Screen',

      // Daftar semua halaman
      routes: {
        '/Beranda': (context) => const Beranda(),
        '/Login': (context) => const Login(),
        '/Riwayat': (context) => const Riwayat(),
        '/Pembayaran': (context) => const Pembayaran(),
        '/Form_Pemesanan': (context) => const Form_Pemesanan(),
        '/Splash_Screen': (context) => const Splash_Screen(),
        '/Spesifikasi_Motor': (context) => const Spesifikasi_Motor(),
        '/Spesifikasi_Mobil': (context) => const Spesifikasi_Mobil(),
        '/Mobil_Page': (context) => const Mobil_page(),
        '/Motor_Page': (context) => const Motor_page(),
        '/Profile': (context) => const Profil(),
      },
    );
  }
}
