import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  RiwayatState createState() => RiwayatState();
}

class RiwayatState extends State<Riwayat> {
  DateTime? selectedDate;

  final List<Map<String, String>> history = [
    {
      'name': 'Mazda 3 Hatchback',
      'image': 'assets/images/mazda3_hatchback.png',
      'rental': 'January 21, 2026',
      'return': 'January 23, 2026',
      'duration': '2 Days',
    },
    {
      'name': 'BMW M4',
      'image': 'assets/images/BMWM4.png',
      'rental': 'March 1, 2026',
      'return': 'March 8, 2026',
      'duration': '7 Days',
    },
    {
      'name': 'Hyundai Palisade',
      'image': 'assets/images/hyundai_palisade.png',
      'rental': 'May 13, 2026',
      'return': 'May 16, 2026',
      'duration': '3 Days',
    },
  ];

  Future<void> selectDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  void openHistoryDetail(Map<String, String> item) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          title: Text(
            item['name']!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: double.infinity,
                  height: 130,
                  color: const Color(0xFFFFF8D6),
                  child: Image.asset(
                    item['image']!,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.directions_car,
                        size: 60,
                        color: Color(0xFF8C8C8C),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              detailRow('Rental Date', item['rental']!),
              const SizedBox(height: 8),
              detailRow('Return Date', item['return']!),
              const SizedBox(height: 8),
              detailRow('Duration', item['duration']!),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Tutup',
                style: TextStyle(
                  color: Color(0xFFFFC515),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget detailRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
        ),
      ],
    );
  }

  void goToHome() {
    Navigator.pushNamedAndRemoveUntil(context, '/Beranda', (route) => false);
  }

  void goToProfile() {
    Navigator.pushNamed(context, '/Profile');
  }

  void goToActivities() {
    if (ModalRoute.of(context)?.settings.name != '/Riwayat') {
      Navigator.pushNamed(context, '/Riwayat');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 17),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Color(0xFFEAEAEA))),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFFE0E3E7)),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18,
                        color: Color(0xFF111827),
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
                                color: Color(0xFFFACC15),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'igo',
                              style: TextStyle(
                                color: Color(0xFF111827),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        'Booking History',
                        style: TextStyle(
                          color: Color(0xFF111827),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Check your transaction history',
                        style: TextStyle(
                          color: Color(0xFF8C8C8C),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 17),
                    GestureDetector(
                      onTap: selectDate,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 17,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0x4D8C8C8C)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedDate == null
                                  ? 'Select a Date'
                                  : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                              style: const TextStyle(
                                color: Color(0xFF111827),
                                fontSize: 13,
                              ),
                            ),
                            const Icon(
                              Icons.calendar_month_outlined,
                              size: 25,
                              color: Color(0xFF111827),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 21),
                    ...history.map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(bottom: 9),
                        child: historyCard(item),
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
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFEAEAEA))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavItem(
              icon: Icons.home_outlined,
              label: 'Home',
              onTap: goToHome,
            ),
            bottomNavItem(
              icon: Icons.receipt_long,
              label: 'Activities',
              active: true,
              onTap: goToActivities,
            ),
            bottomNavItem(
              icon: Icons.person_outline,
              label: 'Profile',
              onTap: goToProfile,
            ),
          ],
        ),
      ),
    );
  }

  Widget historyCard(Map<String, String> item) {
    return GestureDetector(
      onTap: () {
        openHistoryDetail(item);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFFACC15)),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              blurRadius: 4,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 82,
              height: 82,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0x33FACC15),
              ),
              child: Image.asset(
                item['image']!,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.directions_car,
                    size: 45,
                    color: Color(0xFF8C8C8C),
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name']!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  infoRow('Rental Date', item['rental']!),
                  const SizedBox(height: 7),
                  infoRow('Return Date', item['return']!),
                  const SizedBox(height: 6),
                  infoRow('Rental duration', item['duration']!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoRow(String title, String value) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget bottomNavItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    bool active = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 27,
              color: active ? const Color(0xFFFACC15) : const Color(0xFF8C8C8C),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: active
                    ? const Color(0xFFFACC15)
                    : const Color(0xFF8C8C8C),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
