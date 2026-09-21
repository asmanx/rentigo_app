import 'package:flutter/material.dart';

class Mobil_page extends StatelessWidget {
  const Mobil_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobilPage();
  }
}

class MobilPage extends StatefulWidget {
  const MobilPage({super.key});

  @override
  State<MobilPage> createState() => _MobilPageState();
}

class _MobilPageState extends State<MobilPage> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> vehicles = [
    {
      'image': 'assets/images/Mercedes-Benz C 200.png',
      'name': 'MERCEDES-BENZ C 200',
      'price': 'Rp750.000/hari',
    },
    {
      'image': 'assets/images/mazda3_hatchback.png',
      'name': 'MAZDA 3 HATCHBACK',
      'price': 'Rp600.000/hari',
    },
    {
      'image': 'assets/images/hyundai_palisade.png',
      'name': 'HYUNDAI PALISADE',
      'price': 'Rp500.000/hari',
    },
    {
      'image': 'assets/images/BMWM4.png',
      'name': 'BMW M4',
      'price': 'Rp750.000/hari',
    },
    {
      'image': 'assets/images/fortuner.webp',
      'name': 'TOYOTA FORTUNER',
      'price': 'Rp500.000/hari',
    },
    {
      'image': 'assets/images/chery_tiggo9.png',
      'name': 'CHERY TIGGO 9 CSH',
      'price': 'Rp400.000/hari',
    },
    {
      'image': 'assets/images/avanza.png',
      'name': 'TOYOTA AVANZA',
      'price': 'Rp350.000/hari',
    },
    {
      'image': 'assets/images/innova_reborn.png',
      'name': 'TOYOTA INNOVA REBORN',
      'price': 'Rp350.000/hari',
    },
  ];

  List<Map<String, String>> filteredVehicles = [];

  @override
  void initState() {
    super.initState();
    filteredVehicles = vehicles;
    searchController.addListener(filterVehicles);
  }

  void filterVehicles() {
    final query = searchController.text.toLowerCase().trim();

    setState(() {
      if (query.isEmpty) {
        filteredVehicles = vehicles;
      } else {
        filteredVehicles = vehicles.where((vehicle) {
          return vehicle['name']!.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void goToMotor() {
    Navigator.pushNamed(context, '/Motor_Page');
  }

  void goToHome() {
    Navigator.pushNamedAndRemoveUntil(context, '/Beranda', (route) => false);
  }

  void goToHistory() {
    Navigator.pushNamed(context, '/Riwayat');
  }

  void goToProfile() {
    Navigator.pushNamed(context, '/Profile');
  }

  void openVehicleDetail(Map<String, String> vehicle) {
    Navigator.pushNamed(context, '/Spesifikasi_Mobil');
  }

  void showMicMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Fitur pencarian suara belum tersedia.'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF2F8),
      body: SafeArea(
        child: Column(
          children: [
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
                          const Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.black54,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              controller: searchController,
                              decoration: const InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                                border: InputBorder.none,
                                isDense: true,
                              ),
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          GestureDetector(
                            onTap: showMicMessage,
                            child: const Icon(
                              Icons.mic_none,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(width: 12),
                          GestureDetector(
                            onTap: goToHistory,
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 38,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Color(0xFF737373)],
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: goToMotor,
                            child: const Center(
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
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Mobil',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  height: 2,
                                  width: 45,
                                  color: const Color(0xFFFACC15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Daftar Kendaraan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: filteredVehicles.isEmpty
                          ? const Center(
                              child: Text(
                                'Kendaraan tidak ditemukan',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          : GridView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: filteredVehicles.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 12,
                                    mainAxisExtent: 255,
                                  ),
                              itemBuilder: (context, index) {
                                final vehicle = filteredVehicles[index];

                                return GestureDetector(
                                  onTap: () {
                                    openVehicleDetail(vehicle);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 5,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 125,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFF2F2F2),
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(12),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                  top: Radius.circular(12),
                                                ),
                                            child: Image.asset(
                                              vehicle['image']!,
                                              fit: BoxFit.contain,
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                    return const Icon(
                                                      Icons.directions_car,
                                                      size: 40,
                                                      color: Colors.grey,
                                                    );
                                                  },
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  vehicle['name']!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  vehicle['price']!,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFFFF0000),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                const Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 7,
                                                      height: 7,
                                                      child: DecoratedBox(
                                                        decoration:
                                                            BoxDecoration(
                                                              color:
                                                                  Colors.green,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
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
                                        ),
                                      ],
                                    ),
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
      bottomNavigationBar: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFEAEAEA))),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: goToHome,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 22,
                      color: Color(0xFFFACC15),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Beranda',
                      style: TextStyle(fontSize: 11, color: Color(0xFFFACC15)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: goToHistory,
                child: const Column(
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
            ),
            Expanded(
              child: InkWell(
                onTap: goToProfile,
                child: const Column(
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
            ),
          ],
        ),
      ),
    );
  }
}
