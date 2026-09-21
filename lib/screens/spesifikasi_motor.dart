import 'package:flutter/material.dart';

class Spesifikasi_Motor extends StatelessWidget {
  const Spesifikasi_Motor({super.key});

  @override
  Widget build(BuildContext context) {
    return const MotorcycleSpecsPage();
  }
}

class ChromePreview extends StatelessWidget {
  const ChromePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const MotorcycleSpecsPage();
  }
}

class MotorcycleSpecsPage extends StatelessWidget {
  const MotorcycleSpecsPage({super.key});

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
                padding: const EdgeInsets.only(left: 20, top: 28, right: 20),
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
                          'Motorcycle Specs',
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        'VESPA SPRINT 150',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: darkText,
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        height: 270,
                        constraints: const BoxConstraints(maxWidth: 335),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          gradient: RadialGradient(
                            center: const Alignment(0, 0.55),
                            radius: 0.78,
                            colors: [
                              const Color(0xFFFFEFAE).withValues(alpha: 0.90),
                              const Color(0xFFFFF6CF).withValues(alpha: 0.55),
                              Colors.white.withValues(alpha: 0.0),
                            ],
                            stops: const [0.0, 0.58, 1.0],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Image.asset(
                            'assets/images/vespa.png',
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.two_wheeler,
                                size: 120,
                                color: Color(0xFF383C48),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const MotorcycleSpecList(),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Form_Pemesanan');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: yellow,
                            foregroundColor: darkText,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Sewa Sekarang',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MotorcycleSpecList extends StatelessWidget {
  const MotorcycleSpecList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpecificationItem(
          title: 'Engine Type',
          description:
              'i-get, 4-stroke, 3-valve\n'
              'single cylinder, forced air-cooled',
        ),
        SpecificationItem(title: 'Transmission', description: 'Automatic CVT'),
        SpecificationItem(
          title: 'Body Frame',
          description:
              'Steel body frame with\n'
              'welded structure',
        ),
        SpecificationItem(
          title: 'Front Suspension',
          description:
              'Single-arm with\n'
              'coil spring and hydraulic shock\n'
              'absorber',
        ),
        SpecificationItem(
          title: 'Tires',
          description:
              'Tubeless, Front 110/70-12", Rear\n'
              '120/70-12"',
        ),
        SpecificationItem(
          title: 'Fuel Tank Capacity',
          description: '7.5 to 8.0 liters',
        ),
      ],
    );
  }
}

class SpecificationItem extends StatelessWidget {
  final String title;
  final String description;

  const SpecificationItem({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
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
                  height: 1.15,
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
