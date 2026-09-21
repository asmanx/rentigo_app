import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// =========================
// APLIKASI UTAMA
// =========================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental Kendaraan',
      home: const HomePage(),
    );
  }
}

// =========================
// HALAMAN UTAMA
// =========================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF2F8),

      body: SafeArea(
        child: Column(
          children: [
            // =========================
            // HEADER
            // =========================
            Container(
              height: 141.62,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sewa_motor.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment(0, 0.7),
                ),
              ),

              child: Column(
                children: [
                  // =========================
                  // SEARCH BAR
                  // =========================
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 12, 15, 0),

                    child: Container(
                      height: 42,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Row(
                        children: [
                          const SizedBox(width: 12),

                          // ICON SEARCH
                          const Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.black54,
                          ),

                          const SizedBox(width: 8),

                          // TEXT SEARCH
                          const Expanded(
                            child: Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),

                          // ICON MICROPHONE
                          const Icon(
                            Icons.mic_none,
                            size: 20,
                            color: Colors.black54,
                          ),

                          const SizedBox(width: 12),

                          // ICON CART
                          const Icon(
                            Icons.shopping_cart_outlined,
                            size: 20,
                            color: Colors.black54,
                          ),

                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                  ),

                  const Spacer(),

                  // =========================
                  // PILIHAN MOTOR / MOBIL
                  // =========================
                  Container(
                    height: 38,

                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Color(0xFF737373)],
                      ),
                    ),
                    child: const Row(
                      children: [
                        // SEPEDA MOTOR
                        Expanded(
                          child: Center(
                            child: Text(
                              'Sepeda Motor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        // MOBIL
                        Expanded(
                          child: Center(
                            child: Text(
                              'Mobil',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // =========================
            // DAFTAR KENDARAAN
            // =========================
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // JUDUL
                    const Text(
                      'Daftar Kendaraan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // DAFTAR KARTU
                    Expanded(
                      child: GridView.builder(
                        itemCount: 8,

                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.72,
                            ),

                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // =========================
                                // TEMPAT GAMBAR
                                // =========================
                                Container(
                                  height: 144,
                                  width: double.infinity,

                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12),
                                    ),
                                  ),

                                  child: Image.asset(
                                    [
                                      'assets/images/vespa_sprint150.png',
                                      'assets/images/scoopy.webp',
                                      'assets/images/honda_vario_evo.webp',
                                      'assets/images/honda_beat_street.webp',
                                      'assets/images/honda_stylo160.webp',
                                      'assets/images/honda_pcx160.webp',
                                      'assets/images/vario125.webp',
                                      'assets/images/yamaha_fazzio.png',
                                    ][index],
                                    fit: BoxFit.contain,
                                  ),
                                ),

                                // =========================
                                // INFORMASI KENDARAAN
                                // =========================
                                Padding(
                                  padding: const EdgeInsets.all(10),

                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        [
                                          'VESPA SPRINT 150',
                                          'HONDA SCOOPY',
                                          'VARIO EVO 150',
                                          'BEAT STREET',
                                          'HONDA STYLO 160',
                                          'HONDA PCX 160',
                                          'VARIO 125',
                                          'YAMAHA FAZZIO',
                                        ][index],

                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      const SizedBox(height: 5),

                                      Text(
                                        [
                                          'Rp180.000/hari',
                                          'Rp150.000/hari',
                                          'Rp125.000/hari',
                                          'Rp110.000/hari',
                                          'Rp150.000/hari',
                                          'Rp180.000/hari',
                                          'Rp125.000/hari',
                                          'Rp150.000/hari',
                                        ][index],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFF0000),
                                        ),
                                      ),

                                      const SizedBox(height: 8),

                                      Row(
                                        children: [
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                          ),

                                          const SizedBox(width: 5),

                                          const Text(
                                            'Available',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // =========================
      // NAVBAR
      // =========================
      bottomNavigationBar: Container(
        height: 65,
        color: Colors.white,

        child: Row(
          children: [
            // BERANDA
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined, size: 22, color: Color(0xFFFACC15)),
                  SizedBox(height: 3),
                  Text(
                    'Beranda',
                    style: TextStyle(fontSize: 11, color: Color(0xFFFACC15)),
                  ),
                ],
              ),
            ),

            // AKTIVITAS
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.receipt_long_outlined,
                    size: 22,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Aktivitas',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),

            // PROFILE
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_outline, size: 22, color: Colors.grey),
                  SizedBox(height: 3),
                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
