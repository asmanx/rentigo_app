import 'package:flutter/material.dart';

class Spesifikasi_Mobil extends StatelessWidget {
  const Spesifikasi_Mobil({super.key});

  @override
  Widget build(BuildContext context) {
    return const CarSpecsPage();
  }
}

class ChromePreview extends StatelessWidget {
  const ChromePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const CarSpecsPage();
  }
}

class CarSpecsPage extends StatelessWidget {
  const CarSpecsPage({super.key});

  static const Color yellow = Color(0xFFFFC515);
  static const Color darkText = Color(0xFF171C2B);
  static const Color logoDark = Color(0xFF383C48);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
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
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFFE0E3E7)),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rent',
                                style: TextStyle(
                                  color: yellow,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'igo',
                                style: TextStyle(
                                  color: logoDark,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          'Car Specs',
                          style: TextStyle(
                            color: darkText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 45),
                    const Text(
                      'HYUNDAI PALISADE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: darkText,
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.1,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      width: double.infinity,
                      height: 270,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        gradient: RadialGradient(
                          center: const Alignment(0, 0.45),
                          radius: 0.78,
                          colors: [
                            const Color(0xFFFFEFAE).withValues(alpha: 0.85),
                            const Color(0xFFFFF6CF).withValues(alpha: 0.55),
                            Colors.white.withValues(alpha: 0),
                          ],
                          stops: const [0.0, 0.55, 1.0],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/palisade.png',
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
                    const SizedBox(height: 25),
                    const CarSpecList(),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Form_Pemesanan');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFC515),
                            foregroundColor: const Color(0xFF171C2B),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            'Sewa Sekarang',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarSpecList extends StatelessWidget {
  const CarSpecList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarSpecificationItem(
            title: 'Engine Type',
            description: 'Smartstream G2.5T\nHybrid',
          ),
          CarSpecificationItem(
            title: 'Engine Power',
            description: '262 ps at 5,800 rpm',
          ),
          CarSpecificationItem(
            title: 'Transmission',
            description: '6-speed automatic',
          ),
          CarSpecificationItem(
            title: 'Wheels and Tires',
            description: '21-inch alloy\nwheels with 265/45 R21 tires',
          ),
          CarSpecificationItem(
            title: 'Fuel Tank Capacity',
            description: '7.5 to 8.0 liters',
          ),
          CarSpecificationItem(
            title: 'Seating Capacity',
            description: '7 or 8 seats',
          ),
        ],
      ),
    );
  }
}

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
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                ),
              ),
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$title : ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 1.27,
                    ),
                  ),
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
