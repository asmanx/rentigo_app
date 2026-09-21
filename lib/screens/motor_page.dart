import 'package:flutter/material.dart';

class Vehicle {
  final String name;
  final String price;
  final String imagePath;
  final bool isAvailable;

  const Vehicle({
    required this.name,
    required this.price,
    required this.imagePath,
    this.isAvailable = true,
  });
}

class Motor_page extends StatelessWidget {
  const Motor_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  final List<Vehicle> vehicles = const [
    Vehicle(
      name: 'VESPA SPRINT 150',
      price: 'Rp180.000/hari',
      imagePath: 'assets/images/vespa_sprint150.png',
    ),
    Vehicle(
      name: 'HONDA SCOOPY',
      price: 'Rp150.000/hari',
      imagePath: 'assets/images/scoopy.webp',
    ),
    Vehicle(
      name: 'VARIO EVO 150',
      price: 'Rp125.000/hari',
      imagePath: 'assets/images/honda_vario_evo.webp',
    ),
    Vehicle(
      name: 'BEAT STREET',
      price: 'Rp110.000/hari',
      imagePath: 'assets/images/honda_beat_street.webp',
    ),
    Vehicle(
      name: 'HONDA STYLO 160',
      price: 'Rp150.000/hari',
      imagePath: 'assets/images/honda_stylo160.webp',
    ),
    Vehicle(
      name: 'HONDA PCX 160',
      price: 'Rp180.000/hari',
      imagePath: 'assets/images/honda_pcx160.webp',
    ),
    Vehicle(
      name: 'VARIO 125',
      price: 'Rp125.000/hari',
      imagePath: 'assets/images/vario125.webp',
    ),
    Vehicle(
      name: 'YAMAHA FAZZIO',
      price: 'Rp150.000/hari',
      imagePath: 'assets/images/yamaha_fazzio.png',
    ),
  ];

  List<Vehicle> filteredVehicles = [];

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
          return vehicle.name.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
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

  void goToMobil() {
    Navigator.pushNamed(context, '/Mobil_Page');
  }

  void goToVehicleDetail(Vehicle vehicle) {
    Navigator.pushNamed(context, '/Spesifikasi_Motor');
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
            const HeaderSection(),
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
                                return VehicleCard(
                                  vehicle: filteredVehicles[index],
                                  onTap: () {
                                    goToVehicleDetail(filteredVehicles[index]);
                                  },
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
              child: GestureDetector(
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
              child: GestureDetector(
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
              child: GestureDetector(
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

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141.62,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/sewa_motor.png'),
          fit: BoxFit.cover,
          alignment: Alignment(0, 0.7),
        ),
      ),
      child: Column(
        children: [const SearchBarWidget(), const Spacer(), CategorySelector()],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.findAncestorStateOfType<_HomePageState>();

    return Padding(
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
            const Icon(Icons.search, size: 20, color: Colors.black54),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: state?.searchController,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  border: InputBorder.none,
                  isDense: true,
                ),
                style: const TextStyle(fontSize: 13),
              ),
            ),
            GestureDetector(
              onTap: state?.showMicMessage,
              child: const Icon(
                Icons.mic_none,
                size: 20,
                color: Colors.black54,
              ),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: state?.goToHistory,
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
    );
  }
}

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.findAncestorStateOfType<_HomePageState>();

    return Container(
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
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sepeda Motor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 2,
                    width: 75,
                    color: const Color(0xFFFACC15),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: state?.goToMobil,
              child: const Center(
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
          ),
        ],
      ),
    );
  }
}

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;
  final VoidCallback onTap;

  const VehicleCard({super.key, required this.vehicle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: vehicle.isAvailable ? onTap : null,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 125,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.asset(
                  vehicle.imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.directions_bike,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vehicle.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      vehicle.price,
                      style: const TextStyle(
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
                          decoration: BoxDecoration(
                            color: vehicle.isAvailable
                                ? Colors.green
                                : Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          vehicle.isAvailable ? 'Available' : 'Unavailable',
                          style: TextStyle(
                            fontSize: 11,
                            color: vehicle.isAvailable
                                ? Colors.green
                                : Colors.red,
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
  }
}
