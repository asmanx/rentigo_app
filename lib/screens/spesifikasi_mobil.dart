import 'package:flutter/material.dart';

void main() {
  runApp(const RentigoApp());
}

class RentigoApp extends StatelessWidget {
  const RentigoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rentigo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ChromePreview(),
    );
  }
}

// CHROME PREVIEW
class ChromePreview extends StatelessWidget {
  const ChromePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: SizedBox(width: 375, height: 812, child: const CarSpecsPage()),
      ),
    );
  }
}

// CAR SPECS PAGE
class CarSpecsPage extends StatelessWidget {
  const CarSpecsPage({super.key});

  static const Color yellow = Color(0xFFFFC515);
  static const Color darkText = Color(0xFF171C2B);
  static const Color logoDark = Color(0xFF383C48);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          // HEADER
          Container(
            width: double.infinity,
            height: 84,

            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Color(0xFFEAEAEA), width: 1),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 28),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BACK BUTTON
                  Container(
                    width: 36,
                    height: 36,

                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFE0E3E7),
                        width: 1,
                      ),
                    ),

                    child: IconButton(
                      padding: EdgeInsets.zero,

                      onPressed: () {
                        Navigator.pop(context);
                      },

                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: darkText,
                        size: 18,
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // LOGO + TITLE
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // RENTIGO
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rent',
                              style: TextStyle(
                                color: yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                            ),

                            TextSpan(
                              text: 'igo',
                              style: TextStyle(
                                color: logoDark,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 7),

                      // PAGE TITLE
                      const Text(
                        'Car Specs',
                        style: TextStyle(
                          color: darkText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // CONTENT
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),

              child: Column(
                children: [
                  // NAMA MOBIL
                  const SizedBox(height: 51),

                  const Text(
                    'HYUNDAI PALISADE',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: darkText,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.1,
                      height: 1.1,
                    ),
                  ),

                  // GAMBAR MOBIL
                  const SizedBox(height: 47),

                  Container(
                    width: 335,
                    height: 270,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),

                      // Gradasi kuning lembut
                      gradient: RadialGradient(
                        center: const Alignment(0, 0.45),
                        radius: 0.78,

                        colors: [
                          const Color(0xFFFFEFAE).withValues(alpha: 0.85),
                          const Color(0xFFFFF6CF).withValues(alpha: 0.55),
                          Colors.white.withValues(alpha: 0.0),
                        ],

                        stops: const [0.0, 0.55, 1.0],
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                        top: 3,
                        bottom: 3,
                      ),

                      child: Image.asset(
                        'assets/palisade.png',
                        fit: BoxFit.contain,

                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text(
                              'Gambar palisade.png belum ditemukan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  // JARAK SPESIFIKASI
                  const SizedBox(height: 25),

                  // SPESIFIKASI MOBIL
                  const CarSpecList(),

                  const SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// CAR SPECIFICATION LIST
class CarSpecList extends StatelessWidget {
  const CarSpecList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // ENGINE TYPE
          CarSpecificationItem(
            title: 'Engine Type',
            description:
                'Smartstream G2.5T\n'
                'Hybrid',
          ),

          // ENGINE POWER
          CarSpecificationItem(
            title: 'Engine Power',
            description: '262 ps at 5,800 rpm',
          ),

          // TRANSMISSION
          CarSpecificationItem(
            title: 'Transmission',
            description: '6-speed automatic',
          ),

          // WHEELS AND TIRES
          CarSpecificationItem(
            title: 'Wheels and Tires',
            description:
                '21-inch alloy\n'
                'wheels with 265/45 R21 tires',
          ),

          // FUEL TANK
          CarSpecificationItem(
            title: 'Fuel Tank Capacity',
            description: '7.5 to 8.0 liters',
          ),

          // SEATING CAPACITY
          CarSpecificationItem(
            title: 'Seating Capacity',
            description: '7 or 8 seats',
          ),
        ],
      ),
    );
  }
}

// CAR SPECIFICATION ITEM
class CarSpecificationItem extends StatelessWidget {
  final String title;
  final String description;

  const CarSpecificationItem({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // BULLET
          const SizedBox(
            width: 17,

            child: Padding(
              padding: EdgeInsets.only(top: 1),

              child: Text(
                '•',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1.15,
                ),
              ),
            ),
          ),

          // TEXT
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  // LABEL
                  TextSpan(
                    text: '$title : ',

                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 1.27,
                    ),
                  ),

                  // DESCRIPTION
                  TextSpan(
                    text: description,

                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.27,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
