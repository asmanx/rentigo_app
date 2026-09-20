import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4FC),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double screenWidth = constraints.maxWidth;

            final bool isMobile = screenWidth < 600;
            final bool isTablet = screenWidth >= 600 && screenWidth < 1000;
            final bool isDesktop = screenWidth >= 1000;

            final double maxContentWidth = isDesktop
                ? 1200
                : isTablet
                ? 900
                : screenWidth;

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxContentWidth),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // HEADER
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          isMobile ? 20 : 30,
                          15,
                          isMobile ? 20 : 30,
                          10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/logo.png',
                                  width: isMobile ? 48 : 55,
                                  height: isMobile ? 48 : 55,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rentigo',
                                      style: TextStyle(
                                        fontSize: isMobile ? 20 : 24,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF172033),
                                      ),
                                    ),
                                    Text(
                                      'YOUR RIDE. YOUR WAY',
                                      style: TextStyle(
                                        fontSize: isMobile ? 7 : 8,
                                        letterSpacing: 1.1,
                                        color: const Color(0xFF172033),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: isMobile ? 45 : 50,
                              height: isMobile ? 45 : 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFF172033),
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                Icons.person_outline,
                                size: isMobile ? 30 : 32,
                                color: const Color(0xFF172033),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // SEARCH
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 20 : 30,
                          vertical: 5,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari motor atau mobil...',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: isMobile ? 13 : 14,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                      // BANNER
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          isMobile ? 20 : 30,
                          10,
                          isMobile ? 20 : 30,
                          15,
                        ),
                        child: AspectRatio(
                          aspectRatio: isDesktop
                              ? 4.5
                              : isTablet
                              ? 3.8
                              : 2.1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/images/banner.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      // RENTAL MOTOR & MOBIL
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 20 : 30,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: rentalButton(
                                image: 'assets/images/RentalMotor.png',
                                title: 'Motor',
                                isMobile: isMobile,
                                isDesktop: isDesktop,
                              ),
                            ),
                            SizedBox(width: isMobile ? 15 : 20),
                            Expanded(
                              child: rentalButton(
                                image: 'assets/images/RentalMobil.png',
                                title: 'Mobil',
                                isMobile: isMobile,
                                isDesktop: isDesktop,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // MOST POPULAR
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          isMobile ? 20 : 30,
                          20,
                          isMobile ? 20 : 30,
                          10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '🔥 Most Popular',
                              style: TextStyle(
                                fontSize: isMobile ? 18 : 22,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF172033),
                              ),
                            ),
                            Text(
                              'Lihat Semua ›',
                              style: TextStyle(
                                fontSize: isMobile ? 12 : 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // DAFTAR KENDARAAN
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 20 : 30,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: vehicles.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: isMobile
                                    ? 2
                                    : isTablet
                                    ? 3
                                    : 4,
                                crossAxisSpacing: isMobile ? 12 : 18,
                                mainAxisSpacing: isMobile ? 12 : 18,
                                childAspectRatio: isMobile
                                    ? 1.45
                                    : isTablet
                                    ? 1.55
                                    : 1.65,
                              ),
                          itemBuilder: (context, index) {
                            final vehicle = vehicles[index];

                            return vehicleCard(
                              name: vehicle['name'],
                              price: vehicle['price'],
                              image: vehicle['image'],
                              available: vehicle['available'],
                              isMobile: isMobile,
                              isDesktop: isDesktop,
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),

      // BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.amber.shade600,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Activities',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

Widget rentalButton({
  required String image,
  required String title,
  required bool isMobile,
  required bool isDesktop,
}) {
  return Container(
    height: isMobile
        ? 68
        : isDesktop
        ? 90
        : 80,
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 15),
    decoration: BoxDecoration(
      color: const Color(0xFFFFC800),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        SizedBox(
          width: isMobile
              ? 45
              : isDesktop
              ? 65
              : 55,
          height: isMobile
              ? 55
              : isDesktop
              ? 70
              : 65,
          child: Image.asset(image, fit: BoxFit.contain),
        ),
        SizedBox(width: isMobile ? 5 : 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rental',
                style: TextStyle(
                  fontSize: isMobile ? 10 : 12,
                  color: Colors.red,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: isMobile
                      ? 19
                      : isDesktop
                      ? 24
                      : 21,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF172033),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: isMobile ? 22 : 28,
          height: isMobile ? 22 : 28,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF172033),
          ),
          child: Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: isMobile ? 18 : 22,
          ),
        ),
      ],
    ),
  );
}

Widget vehicleCard({
  required String name,
  required String price,
  required String image,
  required bool available,
  required bool isMobile,
  required bool isDesktop,
}) {
  return Container(
    padding: EdgeInsets.all(isMobile ? 7 : 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          width: isMobile
              ? 63
              : isDesktop
              ? 100
              : 80,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(6),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(image, fit: BoxFit.contain),
        ),
        SizedBox(width: isMobile ? 7 : 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: isMobile
                      ? 8
                      : isDesktop
                      ? 13
                      : 10,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF172033),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: isMobile
                      ? 8
                      : isDesktop
                      ? 11
                      : 9,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: isMobile ? 3 : 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: available ? Colors.green : Colors.red,
                    width: 0.7,
                  ),
                ),
                child: Text(
                  available ? 'Available' : 'Unavailable',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile
                        ? 7
                        : isDesktop
                        ? 10
                        : 8,
                    color: available ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

final List<Map<String, dynamic>> vehicles = [
  // MOTOR
  {
    'name': 'HONDA SCOOPY',
    'price': 'Rp150.000/day',
    'image': 'assets/images/Honda Scoopy.png',
    'available': true,
  },

  // MOBIL
  {
    'name': 'AVANZA',
    'price': 'Rp350.000/day',
    'image': 'assets/images/Avanza.png',
    'available': true,
  },

  // MOTOR
  {
    'name': 'BEAT STREET',
    'price': 'Rp110.000/day',
    'image': 'assets/images/Beat Street.png',
    'available': false,
  },

  // MOTOR
  {
    'name': 'VARIO 160',
    'price': 'Rp125.000/day',
    'image': 'assets/images/Vario Evo 150.png',
    'available': true,
  },

  // MOBIL
  {
    'name': 'FORTUNER',
    'price': 'Rp400.000/day',
    'image': 'assets/images/Honda Fortuner.png',
    'available': true,
  },

  // MOBIL
  {
    'name': 'INNOVA REBORN',
    'price': 'Rp350.000/day',
    'image': 'assets/images/Inova Reborn.png',
    'available': true,
  },
];
