import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfilePage();
  }
}

class ChromePreview extends StatelessWidget {
  const ChromePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfilePage();
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color yellow = Color(0xFFFFC515);
  static const Color darkText = Color(0xFF171C2B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 84,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Color(0xFFEAEAEA), width: 1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          size: 18,
                          color: darkText,
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
                                  height: 1,
                                ),
                              ),
                              TextSpan(
                                text: 'igo',
                                style: TextStyle(
                                  color: Color(0xFF383C48),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          'Profile',
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      width: 170,
                      height: 170,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.account_circle,
                        size: 170,
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                    const SizedBox(height: 36),
                    const ProfileItem(
                      icon: Icons.person,
                      title: 'Name',
                      value: 'Lala putri septiani',
                    ),
                    const SizedBox(height: 37),
                    const ProfileItem(
                      icon: Icons.alternate_email,
                      title: 'E-Mail',
                      value: 'lalagemay67@gmail.com',
                    ),
                    const SizedBox(height: 37),
                    const ProfileItem(
                      icon: Icons.phone,
                      title: 'Telephone',
                      value: '+6287098752226',
                    ),
                    const SizedBox(height: 37),
                    const ProfileItem(
                      icon: Icons.location_on,
                      title: 'Address',
                      value: 'Jl. Veteran No. 17, Gambir,\nJakarta Pusat',
                    ),
                    const SizedBox(height: 30),
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

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 48,
            child: Icon(icon, color: const Color(0xFFFFC515), size: 27),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
