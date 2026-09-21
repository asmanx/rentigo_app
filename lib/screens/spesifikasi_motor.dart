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
        child: SizedBox(
          width: 375,
          height: 812,
          child: const MotorcycleSpecsPage(),
        ),
      ),
    );
  }
}

// MOTORCYCLE SPECS PAGE
class MotorcycleSpecsPage extends StatelessWidget {
  const MotorcycleSpecsPage({super.key});

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

                      // MOTORCYCLE SPECS
                      const Text(
                        'Motorcycle Specs',
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
                  // TITLE MOTOR
                  const SizedBox(height: 51),

                  const Text(
                    'VESPA SPRINT 150',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: darkText,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                      height: 1.1,
                    ),
                  ),

                  // GAMBAR VESPA
                  const SizedBox(height: 43),

                  Container(
                    width: 335,
                    height: 270,

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
                      padding: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                        top: 3,
                        bottom: 3,
                      ),

                      child: Image.asset(
                        'assets/vespa.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // SPACING SPESIFIKASI
                  const SizedBox(height: 25),

                  // SPESIFIKASI
                  const MotorcycleSpecList(),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// SPECIFICATION LIST
class MotorcycleSpecList extends StatelessWidget {
  const MotorcycleSpecList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ENGINE TYPE
          SpecificationItem(
            title: 'Engine Type',
            description:
                'i-get, 4-stroke, 3-valve\n'
                'single cylinder, forced air-cooled',
          ),

          // TRANSMISSION
          SpecificationItem(
            title: 'Transmission',
            description: 'Automatic CVT',
          ),

          // BODY FRAME
          SpecificationItem(
            title: 'Body Frame',
            description:
                'Steel body frame with\n'
                'welded structure',
          ),

          // FRONT SUSPENSION
          SpecificationItem(
            title: 'Front Suspension',
            description:
                'Single-arm with\n'
                'coil spring and hydraulic shock\n'
                'absorber',
          ),

          // TIRES
          SpecificationItem(
            title: 'Tires',
            description:
                'Tubeless, Front 110/70-12", Rear\n'
                '120/70-12"',
          ),

          // FUEL TANK
          SpecificationItem(
            title: 'Fuel Tank Capacity',
            description: '7.5 to 8.0 liters',
          ),
        ],
      ),
    );
  }
}

// SPECIFICATION ITEM
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

                  // VALUE
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
