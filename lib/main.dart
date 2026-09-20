import 'package:flutter/material.dart';

import 'screens/beranda.dart';
import 'screens/login.dart';
import 'screens/riwayat.dart';
import 'screens/pembayaran.dart';

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
      initialRoute: '/Pembayaran',

      // Daftar semua halaman
      routes: {
        '/Beranda': (context) => const Beranda(),
        '/Login': (context) => const Login(),
        '/Riwayat': (context) => const Riwayat(),
        '/Pembayaran': (context) => const Pembayaran(),
      },
    );
  }
}
